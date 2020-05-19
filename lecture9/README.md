# What I learned
- Entropy: `log_2(n)` where `n` is the number of possibilities

## Symmetric-key cryptography
Use the same key for encryption and decryption.


```
keygen() -> key
encrypt(plaintext, key) -> ciphertext
decrypt(ciphertext, key) -> plaintext
```

where

```
\forall{message}
decrypt(encrypt(message, key), key) == message
```

For practical applications, the `encrypt` function should make the ciphertext hard to decrypt without the key.
For example, base64 would not be a good `encrypt` function (in fact, it doesn't even use a key).

An example of a symmetric crypto algorithm is **AES**.

You can use `openssl` to do symmetric-key encryption and decryption.
An example application is if I have a file on my local filesystem that I want to stop anyone but me from reading,
even if they have physical access to my device.

## Asymmetric-key cryptography
Use separate keys for encryption and decryption.

```
keygen() -> (private_key, public_key)
encrypt(plaintext, public_key) -> ciphertext
decrypt(ciphertext, private_key) -> plaintext
```

where

```
\forall{message}
decrypt(encrypt(message, public_key), private_key) == message
``` 

This enables anyone to send an encrypted message to the private-key holder that only they can read.

An example of an asymmetric crypto algorithm is **RSA**.

### Signing

For sending messages, it's no use if you encrypt something with the private key since anyone can still read them,
but there's no reason why you can't encrypt things the other way around.

There's another application where this is useful. If you want to verify that some message came from me,
I can append an encrypted version of the message to it.
Then, anyone can verify that I sent it, but no one can produce the same **signature**.

```
sign(message, private_key) -> signature
verify(message, public_key) -> boolean
```

An example application is SSH login.
If you want to provide access for me to your SSH server, you can add my SSH public key to it.
When I try to log in, it will challenge me to sign a random message.
If I can produce a signature that is verified by one of the stored public keys,
then the server knows the holder of the private key is trusted and lets me log on.
