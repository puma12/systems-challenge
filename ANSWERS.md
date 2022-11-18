# ANSWERS

How long did it take to finish the test?

It took me about 6-8 hours to finish the test, I got stuck too much time in a simple error that I could not see.

---

If you had more time, how could you improve your solution?

* I would like to take more time with improvements in the nginx configuration. I did a simple solution to make it work.
* Check if I could run docker as a non-root user to restrict some unnecessary privileges.
---

What changes would you do to your solution to be deployed in a production environment?

* Not adding certs in to the code.
* Have a production domain and implement the SSL certificates with Let's Encrypt.
* Adding control errors in the code in case the app does not works as expected.
* Implementing the solution in Kubernetes to manage the containers, scaling pods if there is high workloads.
---

Why did you choose this language over others?

I chose golang language because nowadays is getting more importance, companies like Hashicorp or Google are building their own applications using golang. It has simplified code and powerfull performance. I do not have expirience with this language so I thought it could be a good challenge for me.
---

What was the most challenging part and why?

The most challenging part was learning about how golang language works and the HTTPS part. I wanted to implement a solution to trust the certificate I created without implying changes in the local computer, but finally I did not find any way to do it. Also I wanted to implement it using let's encrypt but I needed a domain, it was not possible to do it in localhost.

