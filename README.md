# Erroneous Creatures

This is a collection of the standard Turing
[Mythical Creatures](https://github.com/turingschool/ruby-exercises/tree/master/mythical-creatures)
exercises with a few...obfuscations thrown in.

Specifically, these creatures are "completed"
and, in theory, correct. But each one has one or more subtle
bugs introduced!

Your job is to use the test suite, error messages,
and tools like Pry to fix the mistakes.

### Setup

```
git clone git@github.com:turingschool-examples/erroneous_creatures.git
```


## Suggested Order

* `unicorn_spec.rb`
* `vampire_spec.rb`
* `dragon_spec.rb`
* `hobbit_spec.rb`
* `pirate_spec.rb`
* `wizard_spec.rb`
* `medusa_spec.rb`
* `werewolf_spec.rb`
* `centaur_spec.rb`
* `hippogriff_spec.rb`

### Common Mistakes

Here are some of the kinds of errors you can expect
to find:

* Syntax errors (files won't run)
* Misuse of local / instance variables
* Misuse of boolean types / object truthiness
* Mixing variable assignment and boolean comparison
* Mixing of collection and single-object types
* Probably many more!

### Techniques

Remember the techniques we have at our disposal:

* Use the test suite to get rapid feedback about our code
* Use Pry to verify assumptions about code, especially
verifying values of variables and types of objects
* Use stacktraces and error messages to understand
and zero in on errors
* Read each stacktrace __twice__ before trying to
change any code

### Running the Tests

```
rspec
```

__or__ running individual tests using `rspec`:

```
rspec unicorn_spec.rb
```

### Related Lesson Plan

Meant to be used in combination with the
[Debugging Techniques](https://github.com/turingschool/lesson_plans/blob/master/ruby_01-object_oriented_programming_with_ruby/debugging.markdown)
Lesson Plan.
