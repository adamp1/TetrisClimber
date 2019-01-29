using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TetrisBoomTest : MonoBehaviour
{
    public float speed = 8;
    public float offset = 0.1f;
    public GameObject effect;
    GameObject ob;
    ParticleSystem gameeffect;

    // Start is called before the first frame update
    void Start()
    {
        material = GetComponent<MeshRenderer>().material;

        offset = transform.position.x * 0.1f;

        ob = Instantiate(effect, transform.position, transform.rotation) as GameObject;
        gameeffect = ob.GetComponent<ParticleSystem>();

        
        var main = gameeffect.main;
        main.startColor = material.GetColor("_GlowColor");
    }

    Material material;

    IEnumerator boom()
    {
        float t = 0;

        yield return new WaitForSeconds(offset);

        gameeffect.Play();

        
        while (t <= 1)
        {
            material.SetFloat("_boom", Mathf.Lerp(0, 1, t));
            yield return null;
            print(Time.time + " in boom");

            t += Time.deltaTime * speed;
        }
        

        material.SetFloat("_boom", 0);
        GetComponent<MeshRenderer>().enabled = false;
        //material.SetFloat("_emintensity", 1000);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            print("boom");
            StartCoroutine(boom());
            //GetComponent<MeshRenderer>().enabled = false;
            //Instantiate(effect, transform.position, transform.rotation);
            
        }

        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            GetComponent<MeshRenderer>().enabled = true;
        }
    }

}
