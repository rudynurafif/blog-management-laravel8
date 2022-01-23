<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Rudy Nurafif',
            'username' => 'rudynurafif',
            'email' => 'rudynurafif@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in,',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in, aperiam necessitatibus ipsum distinctio nisi hic ipsam sequi earum commodi veritatis neque quidem soluta, vel vero ducimus non inventore id facilis cum? Praesentium inventore, minus cupiditate temporibus tempora quas consectetur dolorum rem eaque quo sint sequi exercitationem aspernatur. Aperiam quos laudantium ad dolore blanditiis odio quam doloribus impedit corporis ipsa architecto ratione est non totam, ex beatae qui eius eligendi. Velit, eum. Ipsum adipisci veniam illum quisquam molestias vitae recusandae laboriosam sequi consectetur ducimus eius temporibus nesciunt error deleniti enim incidunt accusamus ex, quis quaerat possimus!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in,',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in, aperiam necessitatibus ipsum distinctio nisi hic ipsam sequi earum commodi veritatis neque quidem soluta, vel vero ducimus non inventore id facilis cum? Praesentium inventore, minus cupiditate temporibus tempora quas consectetur dolorum rem eaque quo sint sequi exercitationem aspernatur. Aperiam quos laudantium ad dolore blanditiis odio quam doloribus impedit corporis ipsa architecto ratione est non totam, ex beatae qui eius eligendi. Velit, eum. Ipsum adipisci veniam illum quisquam molestias vitae recusandae laboriosam sequi consectetur ducimus eius temporibus nesciunt error deleniti enim incidunt accusamus ex, quis quaerat possimus!',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in,',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in, aperiam necessitatibus ipsum distinctio nisi hic ipsam sequi earum commodi veritatis neque quidem soluta, vel vero ducimus non inventore id facilis cum? Praesentium inventore, minus cupiditate temporibus tempora quas consectetur dolorum rem eaque quo sint sequi exercitationem aspernatur. Aperiam quos laudantium ad dolore blanditiis odio quam doloribus impedit corporis ipsa architecto ratione est non totam, ex beatae qui eius eligendi. Velit, eum. Ipsum adipisci veniam illum quisquam molestias vitae recusandae laboriosam sequi consectetur ducimus eius temporibus nesciunt error deleniti enim incidunt accusamus ex, quis quaerat possimus!',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in,',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quis accusantium esse amet in, aperiam necessitatibus ipsum distinctio nisi hic ipsam sequi earum commodi veritatis neque quidem soluta, vel vero ducimus non inventore id facilis cum? Praesentium inventore, minus cupiditate temporibus tempora quas consectetur dolorum rem eaque quo sint sequi exercitationem aspernatur. Aperiam quos laudantium ad dolore blanditiis odio quam doloribus impedit corporis ipsa architecto ratione est non totam, ex beatae qui eius eligendi. Velit, eum. Ipsum adipisci veniam illum quisquam molestias vitae recusandae laboriosam sequi consectetur ducimus eius temporibus nesciunt error deleniti enim incidunt accusamus ex, quis quaerat possimus!',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

    }
}
