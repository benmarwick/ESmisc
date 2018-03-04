

# words2number: Convert English number words into numeric digits [![Build Status](https://travis-ci.org/benmarwick/words2number.svg?branch=master)](https://travis-ci.org/benmarwick/words2number)

### Installation: ###

 ```
devtools::install_github("benmarwick/words2number")
```

This is a thin fork of [verajosemanuel/ESmisc](https://github.com/verajosemanuel/ESmisc), which is for Spanish numbers. I've just changed the Spanish to English. 

### to_number() ###

**to_number()** is a quick & dirty function to translate English spelled quantities into their numerical counterparts.
Given a numerical quantity spelled in English, **to_number** translates it to integer.

### Requirements: 
- magrittr must be installed.
- to_number() needs clean text. So it must be previously cleaned & removed extraneous words, symbols or cents. 
- Quantities MUST be written in a correct English (this is not a grammar tool).
- The upper limit is up to the millions range. 





