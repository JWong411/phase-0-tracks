What are some of the key design philosophies of the Linux operating system?
Info found here: https://opensource.com/business/15/2/how-linux-philosophy-affects-you

- Every program is a filter: Each of the commands that make up this command line program is a filter. That is each command will take an input, usually from Standard Input, and “filters” the data stream by making some change to it, then sends the resulting data stream to Standard Output. 

- Small is beautiful and each program does one thing well: Each command is fairly small and performs a specific task.

- Choose portability over efficiency and use shell scripts to increase leverage and portability:
Portability can be more efficient in the long run compared to writing a program in a compiled language, because a portable program can run on many otherwise incompatible systems.

- Use software leverage: Don't reinvent the wheel. If you can, use good code that's already been written for the task you're trying to accomplish.

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A virtual private server (VPS) is a virtual computer obtained via an Internet hosting service. A VPS runs its own copy of an operating system. 

One advantage of using a VPS is that using one can allow for more space than a shared hosting plan. A VPS will also offer fewer if any restraints on what you can install, delete, and reboot. A VPS also offers an increased level of security.

Why is it considered a bad idea to run programs as the root user on a Linux system?
It's bad for security, makes any mistakes you make or bugs potentially more disastrous.