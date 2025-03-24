<?php

namespace App\Filament\Resources;

use App\Filament\Resources\AdeverintaResource\Pages;
use App\Models\Adeverinta;
use App\Models\Student;
use Filament\Forms;
use Filament\Tables;
use Filament\Resources\Resource;
use Filament\Forms\Form;
use Filament\Tables\Table;

class AdeverintaResource extends Resource
{
    protected static ?string $model = Adeverinta::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel = 'Adeverințe';
    protected static ?string $navigationGroup = 'Documente școlare';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Select::make('student_cnp')
            ->label('Elev')
            ->options(Student::all()->mapWithKeys(function ($student) {
                $numeComplet = trim("{$student->NUME} {$student->PRENUME1} {$student->PRENUME2} {$student->PRENUME3}");
                return [$student->CNP => $numeComplet];
            }))
            ->searchable()
            ->required(),


            Forms\Components\DatePicker::make('data_emitere')
                ->default(now())
                ->required(),

            Forms\Components\Textarea::make('scop')
                ->label('Scopul Adeverinței')
                ->rows(3)
                ->required(),
        ]);
    }



    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('student.CNP')
                    ->label('CNP Elev')
                    ->searchable(),

                Tables\Columns\TextColumn::make('student.NUME')
                    ->label('Nume Elev')
                    ->searchable(),

                Tables\Columns\TextColumn::make('student.PRENUME1')
                    ->label('Prenume Elev')
                    ->searchable(),

                    Tables\Columns\TextColumn::make('student.PRENUME2')
                    ->label('Prenume Elev')
                    ->searchable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Creat la')
                    ->dateTime(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\Action::make('pdf')
                    ->label('Descarcă Adeverință')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->url(fn ($record) => route('adeverinta.pdf', ['cnp' => $record->student_cnp]))
                    ->openUrlInNewTab(),
            ]);
    }


    public static function getPages(): array
    {
        return [
            'index' => Pages\ListAdeverintas::route('/'),
            'create' => Pages\CreateAdeverinta::route('/create'),
            'edit' => Pages\EditAdeverinta::route('/{record}/edit'),
        ];
    }
}
