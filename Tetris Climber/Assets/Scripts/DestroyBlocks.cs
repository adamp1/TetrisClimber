using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DestroyBlocks : MonoBehaviour
{
    GameObject Sword;

    public Image Energy;
    float energy;
    public float EnergyRecovery;
    public float SliceCost;

    bool lookRight = false;
    bool lookLeft = true;
    bool inisiateSlice;
    bool sliceEnergy;
    float moveSwordy = 1;
    float moveSwordx = 0;
    float movesSworddown = 0;

    // Start is called before the first frame update
    void Start()
    {
        Sword = GameObject.Find("Sword");
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        //Energy
        energy = Energy.fillAmount;
        energy *= 100;

        //Energy Recovery
        if(energy < 100)
        {
            energy += EnergyRecovery * Time.deltaTime;
        }


        //Slice
        Vector3 pos = transform.position;

        if (Input.GetAxis("Horizontal") > 0)
        {
            lookRight = true;
            lookLeft = false;
        }
        else if(Input.GetAxis("Horizontal") < 0)
        {
            lookLeft = true;
            lookRight = false;
        }

        if (Input.GetButtonDown("Slice"))
        {
            if(energy >= SliceCost)
            {
                inisiateSlice = true;
                sliceEnergy = true;
            }
        }


        if(inisiateSlice)
        {
            //Raycast
                RaycastHit hit;
                Ray Slice = new Ray(new Vector3(pos.x, pos.y + movesSworddown, pos.z), new Vector3(moveSwordx, moveSwordy, 0));
                Debug.DrawRay(new Vector3(pos.x, pos.y + movesSworddown, pos.z), new Vector3(moveSwordx, moveSwordy, 0));

                if (moveSwordx < 1 && lookRight)
                {
                    moveSwordx += 0.1f;
                }
                else if(moveSwordx > -1 && lookLeft)
                {
                    moveSwordx -= 0.1f;
                }

                if (moveSwordx >= 1  && moveSwordy > 0 && lookRight)
                {
                    moveSwordy -= 0.1f;
                }
                else if(moveSwordx <= -1 && moveSwordy > 0 && lookLeft)
                {
                    moveSwordy -= 0.1f;
                }
          

                if (moveSwordy <= 0 && movesSworddown > -1)
                {
                    movesSworddown -= 0.1f;
                }

                if(movesSworddown <= -1)
                {
                    inisiateSlice = false;
                    movesSworddown = 1;
                    moveSwordx = 0;
                    moveSwordy = 1;
                }


                if (Physics.Raycast(Slice, out hit, 0.75f))
                {
                    if (hit.collider.gameObject.tag == "Mino")
                    {
                        Destroy(hit.transform.gameObject);
                    }


                } 

         /*   Vector3 swordPos = Sword.transform.position;

            if (Sword.transform.rotation.z < -90)
            {
                Sword.transform.Rotate(0, 0, -100 * Time.deltaTime);
            }
            
 
            Sword.transform.position = swordPos; */
            
             


            if(sliceEnergy)
            {
                //Energieverbrauch
                if(energy > SliceCost)
                {
                    energy -= SliceCost;
                }
                   
                sliceEnergy = false;
            }

        }

        //Show Energy
        energy /= 100;
        Energy.fillAmount = energy;

    }

    //BUGS: Blöcke übern spieler gehen noch nicht kaputt
    //      L Reverse geht nicht kaputt
    //      Lücken zwischen Blöcken
    //      Blöcken fallen noch nicht nachdem ein Block zerstört wurdea
    //      Blöcke spawnen unendlich auf einer stelle falls spieler stehen bleibt
}
