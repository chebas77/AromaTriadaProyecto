<x-form-section submit="updatePassword">
    <x-slot name="title">
        {{ __('Update Password') }}
    </x-slot>


    <x-slot name="description">
        {{ __('Ensure your account is using a long, random password to stay secure.') }}
    </x-slot>


    <x-slot name="form">
        <div class="col-span-6 sm:col-span-4">
            <x-label for="current_password" class="text-violeta" value="{{ __('Contraseña Actual') }}" />
            <x-input id="current_password" type="password" class="mt-1 block w-full" wire:model="state.current_password" autocomplete="current-password" />
            <x-input-error for="current_password" class="mt-2" />
        </div>


        <div class="col-span-6 sm:col-span-4">
            <x-label for="password" class="text-violeta" value="{{ __('Nueva Contraseña') }}" />
            <x-input id="password" type="password" class="mt-1 block w-full" wire:model="state.password" autocomplete="new-password" />
            <x-input-error for="password" class="mt-2" />
        </div>


        <div class="col-span-6 sm:col-span-4 ">
            <x-label  for="password_confirmation" class="text-violeta" value="{{ __('Confirmar Contraseña') }}" />
            <x-input id="password_confirmation" type="password" class="mt-1 block w-full" wire:model="state.password_confirmation" autocomplete="new-password" />
            <x-input-error for="password_confirmation" class="mt-2" />
        </div>
    </x-slot>


    <x-slot name="actions">
        <x-action-message class="me-3" on="saved">
            {{ __('Contraseña Actualizada.') }}
        </x-action-message>


        <x-button class="bg-violeta">
            {{ __('Guardar') }}
        </x-button>
    </x-slot>
</x-form-section>
