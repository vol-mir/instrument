<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%country}}`.
 */
class m220501_071857_create_country_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%country}}', [
            'code' => $this->primaryKey(),
            'name' => $this->string()->notNull(),
            'population' => $this->integer()->notNull(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%country}}');
    }
}
