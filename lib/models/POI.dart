class POI{
  var _name;
  var _image;
  var _state;
  var _temperature;
  var _description;

  POI(this._name, this._image, this._state, this._temperature,
      this._description);

  POI.fromJson(Map<String, dynamic> json)
      :_name = json['name'],
        _image = json ['image'],
       _state = json['state'],
       _temperature = json['temperature'],
       _description = json['description'];


  Map<String , dynamic> ToJson() => {
    'name': _name,
    'image':_image,
    'state':_state,
    'temperature':_temperature,
    'description':_description
  };

  get name => _name;

  get description => _description;

  set description(value) {
    _description = value;
  }

  get temperature => _temperature;

  set temperature(value) {
    _temperature = value;
  }

  get state => _state;

  set state(value) {
    _state = value;
  }

  get image => _image;

  set image(value) {
    _image = value;
  }

  set name(value) {
    _name = value;
  }
}