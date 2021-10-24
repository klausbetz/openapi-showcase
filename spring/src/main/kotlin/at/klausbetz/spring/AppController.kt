package at.klausbetz.spring

import at.klausbetz.spring.dto.Message
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("api/v1/messages")
class AppController {
  private val messages: MutableList<Message> = mutableListOf(Message("Hello from Spring"))

  @GetMapping
  fun getMessages(): List<Message> {
    return messages
  }

  @PostMapping
  fun addMessage(@RequestBody message: Message): Message {
    messages.add(message)
    return message
  }
}