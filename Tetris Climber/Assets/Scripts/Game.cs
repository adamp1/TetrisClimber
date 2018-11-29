using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Game : MonoBehaviour {

    Text HeightUI;
    float playerheight;


    public static int gridWidth = 14;
    public static int gridHeight = 100;

    public static Transform[,] grid = new Transform[gridWidth, gridHeight];

    public GameObject[] TetrisPrefab = new GameObject[6];

    bool spawnPrefab;
    bool startGame;
    bool pauseGame;
    bool dead;

    GameObject StopUI;
    GameObject PauseMenuUI;


    //Start
    void Start()
    {
        StopUI = GameObject.Find("Stop");
        PauseMenuUI = GameObject.Find("Pause");

        SpawnNextPrefab();
    }

    //Update
    private void Update()
    {

        if (spawnPrefab)
        {
            SpawnNextPrefab();
            
            
        }

        PlayerHeight();
        PauseGame();
    }

    //Grid
    public void UpdateGrid(BlockMovement tetrisBlock)
    {
        for (int y = 0; y < gridHeight; y++)
        {
            for (int x = 0; x < gridWidth; x++)
            {
                if(grid[x, y] != null )
                {
                    if(grid[x, y].parent == tetrisBlock.transform)
                    {
                        grid[x, y] = null;
                    }
                }
            }
        }

        foreach(Transform mino in tetrisBlock.transform)
        {
            Vector3 pos = Round(mino.position);

            if(pos.y < gridHeight)
            {
                grid[(int)pos.x, (int)pos.y] = mino;
            }
        }
    }

    public Transform GetTransformAtGridPosition(Vector3 pos) {

        if(pos.y > gridHeight - 1)
        {
            return null;
        }
        else
        {
            return grid[(int)pos.x, (int)pos.y];
        }

    }


    public bool CheckIsInsideGrid (Vector3 pos)
    {
        return ((int)pos.x >= 0 && (int)pos.x < gridWidth && (int)pos.y >= 0 && (int)pos.z == 0); 
    }

    public Vector3 Round (Vector3 pos)
    {
        return new Vector3(Mathf.Round(pos.x), Mathf.Round(pos.y), Mathf.Round(pos.z));
    }


    //Spawn Tetris Block
    public void SpawnNextPrefab()
    {
        
        int randomPrefab = Random.Range(0, 5);
        int flipPrefab = Random.Range(0, 2);
        int rot;

        /*  if (randomPrefab < 2)
          {
              if (flipPrefab == 1 && randomPrefab == 0)
              {
                  randomPrefab = 6;
              }

              if (flipPrefab == 1 && randomPrefab == 1)
              {
                  randomPrefab = 5;
              }
          } */

       


       if (flipPrefab == 0)
        {
            rot = 180;
        }
        else
        {
            rot = 0;
        } 

        Instantiate(TetrisPrefab[randomPrefab], transform.position, new Quaternion(0,rot,0,0));
        spawnPrefab = false;
    }

    //GUI
    void PauseGame()
    {
       

        if (Input.GetKeyUp("escape") && Time.timeScale == 1.0)
        {
            pauseGame = true;
        }
        else if(Input.GetKeyUp("escape") && Time.timeScale == 0)
        {
            pauseGame = false;
        }

        if(pauseGame)
        {
            Time.timeScale = 0;
            FindObjectOfType<BlockMovement>().enabled = false;
            StopUI.SetActive(false);
            PauseMenuUI.SetActive(true);

        }

        if (!pauseGame)
        {
            Time.timeScale = 1.0f;
            FindObjectOfType<BlockMovement>().enabled = true;
            StopUI.SetActive(true);
            PauseMenuUI.SetActive(false);
        }
        
    }

    public void Stop()
    {
        pauseGame = true;
    }

    public void Continue()
    {
        pauseGame = false;
    }

    public void Quit()
    {
        Application.Quit();   
    }

    public void Restart()
    {
        SceneManager.LoadScene(1);
    }

    public void MainMenu()
    {
        SceneManager.LoadScene(0);
    }

    void PlayerHeight()
    {
        playerheight = transform.position.y - 20;
        Mathf.Round(playerheight);
        GameObject.Find("heightvalue").GetComponent<Text>().text = playerheight.ToString("F2")+" m";
    }
}
