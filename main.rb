=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?
   - They cannot be instantiated
   - They work like "mixins"
2) What is LSP?
  - Liscov Substitution Principal
  - A sub class should be able to stand in for the super class.
    - All sub classes contain the super class that they inherit from.
3) Briefly describe how the template method pattern works.
  - The inheriting class will utilize features in the super class, 
  the super class will require the inheriting class to implement methods or 
  instance properties to function properly. This also starts working 
  towards hooks as well.
=end
