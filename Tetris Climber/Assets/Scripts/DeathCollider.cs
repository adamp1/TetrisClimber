using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathCollider : MonoBehaviour {

    public GameObject GameOverUI;
    public float speed = 0.1f;
    public float increaseIntervall = 1;
    public float speedIncrease = 0.005f;


    [Header("Dont Change Pls")]
    public float SpeedMultiplikator;

    float speedProduct;
    float time;
    float distancetodanger;
    float speedifoutofsight = 1;

	// Update is called once per frame
	void FixedUpdate ()
    {
        moveCollider();        
	}



    void moveCollider ()
    {
        //Distance to Danger
        distancetodanger = FindObjectOfType<Game>().distancetodanger;
        
        //Time
        time += 1 * Time.deltaTime;


        
        
        if(distancetodanger > 12)
        {
            speedifoutofsight = 3;
        }
        else
        {
            speedifoutofsight = 1;
        }


        if (time > increaseIntervall)
        {
            speed += speedIncrease;
            time = 0;
        }       

        if(SpeedMultiplikator < 0.1f)
        {
            SpeedMultiplikator = 0.1f;
        }
         
        if(SpeedMultiplikator > 1)
        {
            SpeedMultiplikator = 1;
        }

        speedProduct = speed * SpeedMultiplikator;

        //Debug.Log(speedProduct); 

        Vector3 pos = transform.position;
        pos.y = pos.y + speedifoutofsight * speedProduct  * Time.deltaTime;
        transform.position = pos;        
    }

    void OnTriggerEnter (Collider other)
    {
        if (other.gameObject.tag == "DeathTrigger")
        {
            GameObject Player = GameObject.Find("Player");
            AkSoundEngine.PostEvent("KilledByNano", gameObject);
            Destroy(Player);
            GameOverUI.SetActive(true);
            GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
        }
    }
}
