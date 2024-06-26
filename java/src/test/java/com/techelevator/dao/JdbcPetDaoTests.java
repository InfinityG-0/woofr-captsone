package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.exception.DuplicatePetException;
import com.techelevator.model.RegisterPetDto;
import com.techelevator.model.Pet;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import java.time.LocalDate;

public class JdbcPetDaoTests extends BaseDaoTests {
    protected static final Pet PET_1 = new Pet(
            1,
            "Bean",
            LocalDate.of(1996, 05, 02),
            "pug",
            "S",
            true,
            1 ,
            "https://res.cloudinary.com/dccsx3iht/image/upload/v1712878757/owner_id1.jpg");
    private JdbcPetDao sut;

    @Before
    public void setUp() {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        sut = new JdbcPetDao(jdbcTemplate);
    }

    @Test
    public void getPetById_given_valid_pet_id_returns_pet() {

        Pet actualPet = sut.getPetById(PET_1.getId());

        Assert.assertEquals(PET_1.getId(), actualPet.getId());
    }

    @Test
    public void createPet_creates_a_pet() {
        RegisterPetDto pet = new RegisterPetDto();
        pet.setPetName("Steve (the Dog) ");
        pet.setOwnerId(1);
//        pet.setProfilePicture("~/steve.jpg");
        pet.setBirthdate(LocalDate.of(2008, 03, 05));
        pet.setBreed("Labrador");
        pet.setSize("XL");
        pet.setFriendly(true);
        pet.setProfilePic("https://res.cloudinary.com/dccsx3iht/image/upload/v1712878757/owner_id1.jpg");


        Pet steve = sut.createPet(pet);

        Assert.assertNotNull(steve);

        Pet retreivedPet = sut.getPetById(steve.getId());
        assertPetsMatch(retreivedPet, steve);
    }

    @Test (expected = DuplicatePetException.class)
    public void createPet_fails_when_pet_exists() {
        RegisterPetDto registerPetDto = new RegisterPetDto();
        registerPetDto.setPetName("Bean");
        registerPetDto.setOwnerId(1);
        registerPetDto.setBirthdate(LocalDate.of(1996, 05, 02));
        registerPetDto.setBreed("pug");
        registerPetDto.setSize("S");
        registerPetDto.setFriendly(true);
        registerPetDto.setProfilePic("https://res.cloudinary.com/dccsx3iht/image/upload/v1712878757/owner_id1.jpg");
        Pet bean = sut.createPet(registerPetDto);

    }
    private void assertPetsMatch (Pet expectedPet, Pet actualPet) {
        Assert.assertEquals(expectedPet.getId(), actualPet.getId());
        Assert.assertEquals(expectedPet.getName(), actualPet.getName());
        Assert.assertEquals(expectedPet.getOwnerId(), actualPet.getOwnerId());
        Assert.assertEquals(expectedPet.getBirthdate(), actualPet.getBirthdate());
        Assert.assertEquals(expectedPet.getBreed(), actualPet.getBreed());
        Assert.assertEquals(expectedPet.getSize(), actualPet.getSize());
        Assert.assertEquals(expectedPet.getFriendly(), actualPet.getFriendly());
        Assert.assertEquals(expectedPet.getProfilePic(), actualPet.getProfilePic());

    }
}