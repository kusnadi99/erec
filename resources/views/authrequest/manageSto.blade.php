<ul>
@foreach($childs as $child)
	<li>
	    {{ $child->nama }}
	@if(count($child->childs))
            @include('authrequest.manageSto',['childs' => $child->childs])
        @endif
	</li>
@endforeach
</ul>