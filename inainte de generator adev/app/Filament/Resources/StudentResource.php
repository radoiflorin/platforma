<?php

namespace App\Filament\Resources;

use App\Filament\Resources\StudentResource\Pages;
use App\Models\Student;
use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;

class StudentResource extends Resource
{
    protected static ?string $model = Student::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?string $navigationLabel = 'Elevi';
    protected static ?string $navigationGroup = 'Administrare elevi';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('CNP')->required(),
                Forms\Components\TextInput::make('NUME')->required(),
                Forms\Components\TextInput::make('INITIALA_TATALUI'),
                Forms\Components\TextInput::make('PRENUME1')->required(),
                Forms\Components\TextInput::make('PRENUME2'),
                Forms\Components\TextInput::make('PRENUME3'),
                Forms\Components\Select::make('SEX')
                    ->options(['M' => 'Masculin', 'F' => 'Feminin']),
                Forms\Components\DatePicker::make('DATA_NASTERE'),
                Forms\Components\TextInput::make('VARSTA')->numeric(),
                Forms\Components\TextInput::make('LOCALITATE_NASTERE'),
                Forms\Components\TextInput::make('DENUMIRE_UNITATE_FORMATIUNE'),
                Forms\Components\TextInput::make('NIVEL_INVATAMANT'),
                Forms\Components\TextInput::make('TIP_FORMATIUNE'),
                Forms\Components\TextInput::make('NUME_CLASA'),
                Forms\Components\TextInput::make('STATUS_ELEV'),
                Forms\Components\DatePicker::make('DATA_INCEPUT_ASOC_FORMATIUNE'),
                Forms\Components\DatePicker::make('DATA_SFARSIT_ASOC_FORMATIUNE'),
                Forms\Components\TextInput::make('Profil'),
                Forms\Components\TextInput::make('Specializare_Calificare'),
                Forms\Components\TextInput::make('Domeniu'),
                Forms\Components\TextInput::make('VOL'),
                Forms\Components\TextInput::make('NR'),
                Forms\Components\TextInput::make('PAG'),
                Forms\Components\DatePicker::make('DATA_INCEPUT_ASOC_UNITATE'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('CNP')->searchable(),
                Tables\Columns\TextColumn::make('NUME')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('PRENUME1')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('TIP_FORMATIUNE')->sortable(),
                Tables\Columns\TextColumn::make('NUME_CLASA')->sortable(),
                Tables\Columns\TextColumn::make('STATUS_ELEV')->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('SEX')
                    ->options(['M' => 'Masculin', 'F' => 'Feminin']),
                Tables\Filters\SelectFilter::make('STATUS_ELEV')
                    ->options(['activ' => 'Activ', 'inactiv' => 'Inactiv']),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListStudents::route('/'),
            'create' => Pages\CreateStudent::route('/create'),
            'edit' => Pages\EditStudent::route('/{record}/edit'),
        ];
    }
}
