# Generated by Django 4.0.6 on 2022-07-23 04:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('categorias', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='categorias',
            name='nome_categoria',
            field=models.CharField(choices=[('Comprovante de matrícula', 'Comprovante de matrícula'), ('Contato dos professores', 'Contato dos professores'), ('Grade de horários', 'Grade de horários'), ('Calendário acadêmico', 'Calendário acadêmico'), ('Informações relevantes dos cursos', 'Informações relevantes dos cursos'), ('Informações sobre inscrição/matrícula', 'Informações sobre inscrição/matrícula'), ('Informações sobre rematrícula', 'Informações sobre rematrícula'), ('Requerimentos/formulários', 'Requerimentos/formulários'), ('Tutoriais de acessos a sistemas acadêmicos', 'Tutoriais de acessos a sistemas acadêmicos')], max_length=100),
        ),
    ]
