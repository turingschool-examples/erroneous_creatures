# Erroneous Creatures

This is a collection of the standard Turing
[Mythical Creatures](https://github.com/turingschool/ruby-exercises/tree/master/mythical-creatures)
exercises with a few...obfuscations thrown in.

Specifically, these creatures are "completed"
and, in theory, correct. But each one has one or more subtle
bugs introduced!

Your job is to use the test suite, error messages,
and tools like Pry to fix the mistakes.

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
mrspec .
```

__or__

```
rake
```

__or__ running individual tests using `ruby`:

```
ruby unicorn_test.rb
```

### Related Lesson Plan

Meant to be used in combination with the
[Debugging Techniques](https://github.com/turingschool/lesson_plans/blob/master/ruby_01-object_oriented_programming_with_ruby/debugging.markdown)
Lesson Plan.
