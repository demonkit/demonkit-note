This is a temp note
====


Python pdb usage:
----
Insert the following in the python file:

    import pdb
    pdb.set_trace()

The useful debug commands are:  
`h`: help  
`b finename:lineno`: set a break point at a spcific place  
`s(tep)`: execute the current line  
`n(ext)`: contiune to the next line  
`r(eturn)`: continue until the function returns  
`a(rgs)`: print the arguments list of the current function  
`p expression`: evaluate the expression in the current context and print its value  
`pp expression`: return pretty `p expression` value  
`q(uit)`: quit debugger
