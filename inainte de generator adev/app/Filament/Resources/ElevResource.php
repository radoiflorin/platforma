<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ElevResource\Pages;
use App\Models\Elev;
use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;

class ElevResource extends Resource
{
    protected static ?string $model = Elev::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?string $navigationLabel = 'Elevi';
    protected static ?string $navigationGroup = 'Administrare școală';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nume')->required(),
                Forms\Components\TextInput::make('prenume')->required(),
                Forms\Components\TextInput::make('email')->required()->email(),
                Forms\Components\TextInput::make('clasa')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nume')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('prenume')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('email')->searchable(),
                Tables\Columns\TextColumn::make('clasa')->sortable(),
                Tables\Columns\TextColumn::make('created_at')->dateTime()->sortable(),
            ])
            ->filters([
                //
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
            'index' => Pages\ListElevs::route('/'),
            'create' => Pages\CreateElev::route('/create'),
            'edit' => Pages\EditElev::route('/{record}/edit'),
        ];
    }
}
