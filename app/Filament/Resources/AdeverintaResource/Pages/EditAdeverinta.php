<?php

namespace App\Filament\Resources\AdeverintaResource\Pages;

use App\Filament\Resources\AdeverintaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditAdeverinta extends EditRecord
{
    protected static string $resource = AdeverintaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
