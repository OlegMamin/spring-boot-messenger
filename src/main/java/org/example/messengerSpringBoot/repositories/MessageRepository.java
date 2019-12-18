package org.example.messengerSpringBoot.repositories;

import org.example.messengerSpringBoot.entities.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {

    public List<Message> findByTag(String tag);
}
