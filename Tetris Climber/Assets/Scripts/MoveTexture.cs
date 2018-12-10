using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveTexture : MonoBehaviour
{
    public float speed = 1;
    public Vector2 direction = new Vector2(1, 1);
    public string map = "_EmissionMap";

    public Material mat;

    // Start is called before the first frame update
    void Start()
    {
        mat = GetComponent<MeshRenderer>().material;
    }

    // Update is called once per frame
    void Update()
    {
        Vector2 offset = direction * speed * Time.time;
        offset = direction * Time.time;
        mat.SetTextureOffset(map, new Vector2(Time.time, 0));
        mat.SetColor("_EmissionColor", Color.green);
    }
}
