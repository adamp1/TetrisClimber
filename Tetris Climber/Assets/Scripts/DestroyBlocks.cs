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
    public float SlashCost;

    public bool lookRight = false;
    public bool lookLeft = true;
    bool inisiateSlice;
    bool sliceEnergy;

    public float Slice_Speed = 10;
    float Slice_Friction = 1;

    private float SwordRotation;

    bool swordAni;

    Vector3 SwordPos;

    // Start is called before the first frame update
    void Start()
    {
        Sword = GameObject.Find("Sword");
        SwordRotation = 90;
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

        if (Input.GetAxis("Horizontal") > 0 && !swordAni)
        {
            lookRight = true;
            lookLeft = false;
        }
        else if(Input.GetAxis("Horizontal") < 0 && !swordAni)
        {
            lookLeft = true;
            lookRight = false;
        }

        if (Input.GetButtonDown("Slice"))
        {
            if(energy >= SlashCost)
            {
                AkSoundEngine.PostEvent("Swing_Sword", gameObject);
                inisiateSlice = true;
                sliceEnergy = true;
            }
        }



        if(inisiateSlice)
        {
            Sword.SetActive(true);
            swordAni = true;

            //  SwordPos = Sword.transform.position;


            if (lookRight)
            {
                if (SwordRotation > -90)
                {
                    SwordRotation -= 1 * Slice_Speed * Slice_Friction;
                }
            }

            if (lookLeft)
            {
                if (SwordRotation < 270)
                {
                    SwordRotation += 1 * Slice_Speed * Slice_Friction;
                }
            }


            /*     if (SwordPos.y > pos.y-0.8f)
                  {
                      SwordPos.y -= SlashSpeed * Time.deltaTime;
                  }
                  else
                  {
                      SwordPos = new Vector3(SwordPos.x, pos.y + 1.5f, pos.z);
                      inisiateSlice = false;               
                  }*/

            // Sword.transform.position = SwordPos;




            //Sword.transform.rotation = Quaternion.Lerp(Quaternion_Rotate_From, Quaternion_Rotate_To, Time.deltaTime * Rotation_Smoothness);
            Sword.transform.rotation = Quaternion.Euler(0, 0, SwordRotation);

            if(SwordRotation == -90 || SwordRotation == 270)
            {
                inisiateSlice = false;
                swordAni = false;
                SwordRotation = 90;
            } 

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

           // SwordPos = new Vector3(pos.x + 0.5f, pos.y + 1.5f, pos.z);
        }

        //Show Energy
        energy /= 100;
        Energy.fillAmount = energy;
      

    }

}
