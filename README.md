# Problem - Array Flattener

Imagine you have a deeply nested array, or multi-dimensional array, like this:

```rb
 array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]]
 array_of_strings = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]
```
the contents of the array aren't important.

In Ruby and JS, we have built in methods and functions to `flatten` arrays into one dimension.  For example, in Ruby:

```rb
=> [1, 2, 3, [[4], 5], [[[6]]]]
[8] pry(main)> array_of_ints.flatten
=> [1, 2, 3, 4, 5, 6]
```
and in JS:

```js
> arr1
[ 0, 1, 2, [ 3, 4 ] ]
> arr1.flat()
[ 0, 1, 2, 3, 4 ]
```
If we look at the docs for either of these, we notice that they are _recursive_ by nature. Your goal is to recreate this functionality by writing a recursive function to accomplish this same thing. For example:

```rb
 array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]]
=> [1, 2, 3, [[4], 5], [[[6]]]]
ruby_flattener(array_of_ints)
=> [1, 2, 3, 4, 5, 6]
```
or in JS:

```js
> arr1
  [ 0, 1, 2, [ 3, 4 ] ]
> flatten(arr1)
  [ 0, 1, 2, 3, 4 ]
```