package ecx.types;

@:final
@:keep
@:unreflective
class EntityData {

    public var entity(default, null):Entity;
    public var world(default, null):World;

    inline function new(entity:Entity, world:World) {
        this.entity = entity;
        this.world = world;
    }


    public var view(get, never):EntityView;
    inline function get_view():EntityView {
        return @:privateAccess new EntityView(this);
    }
}
