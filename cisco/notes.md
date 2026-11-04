### Encapsulation and the Ethernet Frame

The process of placing one message format (the letter) inside another message format is called **encapsulation**.
De-encapsulation occurs when the process is reversed by the recipient and the letter is removed from the envelope.

Each computer message is encapsulated in a specific format, called a frame, before it is sent over the network.
A frame acts likes an envelope; it provides the address of the intendded destination and the address of the source host.
The format and contents fo a frame are determined by the type of message being sent and the channel over which it is communicated.

### IP
Internet Protocol (IP) is responsible for sending a message from the message source to destination over one or more networks.

## The Access Layer
- Ethernet switches make their forwarding decision based on destination MAC address.
- Ethernet switches add entries to their MAC address table based on the source MAC address.
- When a switch receives a ethernet frame the destination MAC address of that frame is not in its 
  MAC address table, the switch will forward the frame out all ports except in the incoming port.

## The Internet Protocol
- A host needs an IPV4 address to participate on the internet and almost all LANs today.
- Every packet sent across the internet has a source and destination IPV4 address. This information is required by networking devices to ensure the information gets to the destination and any replies are returned to the source.


