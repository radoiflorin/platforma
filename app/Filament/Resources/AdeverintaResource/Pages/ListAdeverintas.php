<?php

namespace App\Filament\Resources\AdeverintaResource\Pages;

use App\Filament\Resources\AdeverintaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListAdeverintas extends ListRecords
{
    protected static string $resource = AdeverintaResource::class;

    protected static ?string $title = 'Lista Adeverințelor Eliberate'; // modifică titlul paginii aici

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
