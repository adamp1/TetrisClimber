using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DestroyBlocks : MonoBehaviour
{
    GameObject Sword;
    GameObject Swordtop;

    public Image Energy;
    float energy;
    public float EnergyRecovery;
    public float SlashCost;
    public float SlashSpeed;

    bool lookRight = false;
    bool lookLeft = true;
    bool inisiateSlice;
    bool sliceEnergy;

    // Start is called before the first frame update
    void Start()
    {
        Sword = GameObject.Find("Sword");
        Swordtop = GameObject.Find("Swordtop");
    }

    // Update is called once per frame
    void Update()
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
            if(energy >= SlashCost)
            {
                inisiateSlice = true;
                sliceEnergy = true;
            }
        }


        if(inisiateSlice)
        {
            Sword.SetActive(true);
            Swordtop.SetActive(true);

            Vector3 SwordPos = Sword.transform.position;

            if (lookRight)
            {
                SwordPos = new Vector3(pos.x + 0.5f, SwordPos.y, SwordPos.z);
            }

            if (lookLeft)
            {
                SwordPos = new Vector3(pos.x - 0.5f, SwordPos.y, SwordPos.z);
            }


            if (SwordPos.y > pos.y-0.8f)
            {
                SwordPos.y -= SlashSpeed * Time.deltaTime;
            }
            else
            {
                inisiateSlice = false;
                SwordPos.y = 1.5f;
            }

            Sword.transform.position = SwordPos;



            if (sliceEnergy)
            {
                //Energieverbrauch
                if(energy > SlashCost)
                {
                    energy -= SlashCost;
                }
                   
                sliceEnergy = false;
            }

        }
        else
        {
            Sword.SetActive(false);
            Swordtop.SetActive(false);
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
