current_ring = 0;

for (var i = 0; i < 3; i++) {
    rings[i] = instance_find(obj_puzzleKey, i);
}

targets[0] = instance_find(obj_puzzleAngelStatue, 0);
targets[1] = instance_find(obj_puzzleDevilStatue, 0);
targets[2] = instance_find(obj_puzzleMoonStatue, 0);

array_sort(rings, function(a, b) {
    return a.x - b.x;
});

array_sort(targets, function(a, b) {
    return a.x - b.x;
});

rings[0].rot_speed = 2;
rings[1].rot_speed = 4;
rings[2].rot_speed = 6;

for (var i = 0; i < 3; i++) {
    rings[i].target_angle = 0;
}

rings[0].is_active = true;