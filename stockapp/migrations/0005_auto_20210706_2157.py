# Generated by Django 3.0.3 on 2021-07-06 19:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stockapp', '0004_rename_categorie_categoriedetails'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProduitDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_categorie', models.IntegerField(max_length=255)),
                ('nom', models.CharField(max_length=255)),
                ('quantite', models.IntegerField(max_length=255)),
            ],
            options={
                'db_table': 'produits',
            },
        ),
        migrations.AlterField(
            model_name='categoriedetails',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]