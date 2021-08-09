# Enigma

This program can be used to encrypt and decrypt text files using a five-digit key, and an offset generated from a given date. Defaults are a randomly generated key, and today's date, but running the program while bypassing the CLI can allow you to create your own key and offset.

## Functionality

Encrypt and decrypt methods are fully implemented, as well as a couple CLI runners to encrypt and decrypt entire files. In the future, I hope to implement a way to crack the encryption. (Meets Expectations)

## OOP

I tried to break down the project into the smallest reasonable components. Variables are contained as much as possible. Modules are used to make keys and offsets because I really only needed those components to contain methods for other classes to use. I will work on searching for variables that are exposed and shouldn't be in order to keep the lowest visibility possible on keys/offsets. (Meets Expectations)

## Conventions and Mechanics

Everything is spaced and intented properly, and everything is named as to accurately describe functionality. Hashes are implemented. However, I have a few methods and lines that run a bit long. (Meets expectations)

## TDD

100% Test coverage. Mocks are used to test out modules. Some tests ended up written strangely, but still end up testing what they need to. I had difficulty modeling tests for running the current date, but found my way through it. (Meets Expectations)
