<?php

namespace App\Filament\Resources\ElevResource\Pages;

use App\Filament\Resources\ElevResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListElevs extends ListRecords
{
    protected static string $resource = ElevResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
