# tutorial to run this demo

## step-by-step

To run the LVM-Med demo, follow these steps:

1. download the weights file:
    - [lvm_med_weight.pth](https://drive.google.com/file/d/1bdoJUme-Jajk3b-g8tSHfJUBrLkDeiSc/view?usp=drive_link) copy it to `./lvm_med_weight/`
    - download all pth file in [sam_model_weights](https://drive.google.com/drive/folders/11d8UP1mksYmU8Hx1KDlkbsiRM8YBh4yF?usp=drive_link) copy them to `./working_dir/checkpoint/`
    - download [sam_vit_b_01ec64.pth](https://drive.google.com/file/d/1HkmbjKJ8gzmW6LojZa4uIH0tgRdyTpT9/view?usp=drive_link) copy it to `./working_dir/`
2. Open `./notebook/Prompt_Demo_run.ipynb`
3. change runtime type to T4 GPU:
    - Runtime -> Change runtime type -> T4 GPU -> Done
4. change diractory to: `%cd /content/drive/MyDrive/LVM-Med/LVM-Med` to `%cd <path of project directory>`
5. Run code blocks sequentially
6. Enjoy coding!
