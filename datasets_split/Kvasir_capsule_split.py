import os
import random


def Kvasir_capsule_split():
    # Set directory paths
    dataset_folder = "./dataset_demo/Kvasir_capsule"
    split_ratio = 0.8  # 80% for training, 20% for testing

    # Get all files in the dataset folder
    all_classes = os.listdir(dataset_folder)
    
    for class_name in all_classes:        
        # Create train and test folders if they don't exist
        train_folder = os.path.join(dataset_folder, "Training", class_name)
        test_folder = os.path.join(dataset_folder, "Testing", class_name)
        os.makedirs(train_folder, exist_ok=True)
        os.makedirs(test_folder, exist_ok=True)

        class_path = os.path.join(dataset_folder, class_name)
        all_files = os.listdir(class_path)

        # Shuffle the files for randomness
        random.shuffle(all_files)

        # Calculate the split point
        split_point = int(split_ratio * len(all_files))

        # Move files to respective folders
        for filename in all_files[:split_point]:
            source = os.path.join(class_path, filename)
            destination = os.path.join(train_folder, filename)
            os.rename(source, destination)

        for filename in all_files[split_point:]:
            source = os.path.join(class_path, filename)
            destination = os.path.join(test_folder, filename)
            os.rename(source, destination)

        try:
            os.rmdir(class_path)
        except OSError as e:
            print(f"Error: {e}")



