<?php

namespace App\Models;

class Post // untuk menyimpan data dari postingan
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Rudy Nurafif",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam delectus dolorem, error saepe laboriosam iure sit! Ea at, ipsa eveniet, qui mollitia omnis saepe corrupti, quae cumque inventore minima! Perspiciatis nisi, nesciunt dolore aliquam hic corrupti porro aliquid at obcaecati maxime cum repellat dicta, accusantium rem eligendi voluptate ipsam iure fugiat harum laboriosam. Voluptate veritatis vitae, voluptatum cum similique impedit laudantium. Pariatur porro rerum eum ipsa placeat deleniti. Id porro non excepturi obcaecati minus expedita optio est velit eius voluptatibus?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Sebastian Nurafif",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, quibusdam. Provident tempora mollitia earum quod architecto soluta dolores modi a? Veniam, architecto eum illo rem voluptate ad eligendi numquam dolore fuga quae quo adipisci obcaecati id modi, minima placeat enim nobis laudantium ipsum deleniti suscipit dignissimos cum cupiditate eos. Corrupti quisquam eos adipisci aspernatur voluptates, hic odit eius odio mollitia maxime assumenda quia quas sapiente aliquid saepe laborum necessitatibus nam illum aperiam illo. Nemo excepturi quas voluptatem praesentium recusandae perferendis aliquid sapiente? Est quas exercitationem commodi soluta delectus officia dignissimos fuga, mollitia tempore? Repellat iure dolores magnam commodi error quia."
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
