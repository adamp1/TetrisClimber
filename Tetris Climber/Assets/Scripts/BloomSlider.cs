using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.ImageEffects;
using UnityEngine.UI;

public class BloomSlider : MonoBehaviour
{

    public float bloom = 0;
    public float bloommin, bloommax;
    Bloom effect;
    Slider slider;
    
    // Start is called before the first frame update
    void Start()
    {

        slider = GetComponent<Slider>();
        effect = GameObject.FindObjectOfType<Bloom>();
        
    }

    // Update is called once per frame
    void Update()
    {
        effect.bloomIntensity = Mathf.Lerp(bloommin, bloommax, slider.value);
    }
}
