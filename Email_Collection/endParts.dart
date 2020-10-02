final List<String> eParts = [ // end parts of page link
  '&rlz=1C1CHBF_enBD916BD916&oq=&aqs=chrome.0.35i39l8.752091j0j7&sourceid=chrome&ie=UTF-8',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk01orFsSEvD8SFhCmadq0_odmrjl0A:1601280741881&ei=5ZpxX6ywNZmb4-EPuYGk4As&start=10&sa=N&ved=2ahUKEwjstrjOs4vsAhWZzTgGHbkACbw4MhDy0wN6BAgMEC0&biw=1536&bih=722'  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk02OE3R8iR3IN3UGPcIR_pxZ1Ij37g:1601201123419&ei=42NwX8mcGdW1rQHSo4mQBQ&start=20&sa=N&ved=2ahUKEwiJmrOBi4nsAhXVWisKHdJRAlI4ChDy0wN6BAgMEC4&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk00vM9rlzugm_Tm9c2UKGYrUdDBGCw:1601201145299&ei=-WNwX53qEYL49QOq6qnoCg&start=30&sa=N&ved=2ahUKEwjdyuqLi4nsAhUCfH0KHSp1Cq04FBDy0wN6BAgMEDA&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk025SphDFEV-DZa-pr05KtxQrYzWLg:1601201181576&ei=HWRwX6zsItmP9QPvrK-AAg&start=40&sa=N&ved=2ahUKEwjs7pCdi4nsAhXZR30KHW_WCyA4HhDy0wN6BAgMEDI&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk02ejzvyGLBZ4qUuPwFQGncqkDoWjw:1601201216355&ei=QGRwX_GpFdb6rQGKmJOgAQ&start=50&sa=N&ved=2ahUKEwjxyduti4nsAhVWfSsKHQrMBBQ4KBDy0wN6BAgMEDQ&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk00pzimd_E6NM79ZmxdoDtwXFzBXkA:1601201239291&ei=V2RwX8muEZSwrQGD-qP4DQ&start=60&sa=N&ved=2ahUKEwiJttO4i4nsAhUUWCsKHQP9CN84MhDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk007I83F3WPWa4Wa67KoJdlyDSJ2RQ:1601201267733&ei=c2RwX5SoLPiortoP8uip2AU&start=70&sa=N&ved=2ahUKEwjUrZvGi4nsAhV4lEsFHXJ0Cls4PBDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk01Nro5ADuTWLspU2tMO0lpJtfeslQ:1601201305725&ei=mWRwX6frK8j69QP0yoSABA&start=80&sa=N&ved=2ahUKEwjnm6rYi4nsAhVIfX0KHXQlAUA4RhDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk02fCIY7a3AeAiRkm9pWwmHxo1Sgyg:1601201329010&ei=sWRwX4wVm5H1A-CAt6AD&start=90&sa=N&ved=2ahUKEwjMsbfji4nsAhWbSH0KHWDADTQ4UBDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk016P7ACDHg5O2582d-ehU2IJHF-5g:1601280271027&ei=D5lxX9GmAd-X4-EP6K6PwAU&start=100&sa=N&ved=2ahUKEwiR6vXtsYvsAhXfyzgGHWjXA1g4WhDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk02NP9rg1VNE3xml8Yk_I1LDMLXlJQ:1601280276640&ei=FJlxX-bgJryR4-EP7-yXwAQ&start=110&sa=N&ved=2ahUKEwjmuszwsYvsAhW8yDgGHW_2BUg4ZBDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk025H4JB7oRB6VExcyBqqU_yJJXGew:1601280297394&ei=KZlxX9rNF8bH4-EPzPWcYA&start=120&sa=N&ved=2ahUKEwiahr_6sYvsAhXG4zgGHcw6Bww4bhDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk01MxyYRGnd2WR0fgLPLWo1B-xdz9g:1601280316000&ei=O5lxX8vXPIuR4-EP28eLiA8&start=130&sa=N&ved=2ahUKEwiL4a6DsovsAhWLyDgGHdvjAvE4eBDy0wN6BAgMEDY&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk02rMIqBLrzAwWQUGgJ6S4quGk8agw:1601280397807&ei=jZlxX_XzMMTJpge2iKWwDw&start=140&sa=N&ved=2ahUKEwi17q-qsovsAhXEpOkKHTZECfY4ggEQ8tMDegQIDBA2&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk003Z8SwK1rdltqVjEiQSjLlI1kcog:1601280404686&ei=lJlxX4LDKcqa4-EP_sabyAE&start=150&sa=N&ved=2ahUKEwiC3dOtsovsAhVKzTgGHX7jBhk4jAEQ8tMDegQIDBA6&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk02OUka_HQQNZYoEsr-SuN0PDtUr-A:1601280433075&ei=sZlxX6GSBIeX4-EPgZ6iuAk&start=160&sa=N&ved=2ahUKEwjhrpi7sovsAhWHyzgGHQGPCJc4lgEQ8tMDegQIDBA8&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk00J5qVKEpkQQTsK7jL4zTpVA9NxCw:1601280521665&ei=CZpxX-6VKLvF4-EPk8SakAk&start=170&sa=N&ved=2ahUKEwiuvrflsovsAhW74jgGHROiBpI4oAEQ8tMDegQIDBA2&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk00I8b28oEcrvGHMg9vbViwK8Chltg:1601280527994&ei=D5pxX_SvPMuX4-EPn9mSuAc&start=180&sa=N&ved=2ahUKEwi087nosovsAhXLyzgGHZ-sBHc4qgEQ8tMDegQIDBA4&biw=1536&bih=722',
  '&safe=active&rlz=1C1CHBF_enBD916BD916&sxsrf=ALeKk007XvwhrFZE6vaMTZuW3Db_8ieb6Q:1601280552153&ei=KJpxX6H1CIWJ4-EPkJCmwAo&start=190&sa=N&ved=2ahUKEwihqfzzsovsAhWFxDgGHRCICag4tAEQ8tMDegQIDBA6&biw=1536&bih=722'
];

