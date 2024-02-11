<x-mail::layout>
{{-- Header --}}
<x-slot:header>
{{-- <x-mail::header :url="config('app.url')"> --}}
    <x-mail::header :url="config('Financial Guardian System')">
{{ config('app.name') }}
{{-- {{ 'Financial Guardian' }} --}}
</x-mail::header>
</x-slot:header>

{{-- Body --}}
{{ $slot }}

{{-- Subcopy --}}
@isset($subcopy)
<x-slot:subcopy>
<x-mail::subcopy>
{{ $subcopy }}
</x-mail::subcopy>
</x-slot:subcopy>
@endisset

{{-- Footer --}}
<x-slot:footer>
<x-mail::footer>
{{-- © {{ date('Y') }} {{ config('app.name') }}. @lang('All rights reserved.') --}}
© {{ date('Y') }} {{ 'Financial Guardian System' }}. @lang('All rights reserved.')
</x-mail::footer>
</x-slot:footer>
</x-mail::layout>
