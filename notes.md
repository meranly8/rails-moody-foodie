# Project Requirements
- [x] Use Ruby on Rails framework

- [x] Models include associations
* [x] &ensp;&ensp;(~1) belongs_to 
+ &ensp;&ensp;&ensp;&ensp;Entry belongs_to User
+ &ensp;&ensp;&ensp;&ensp;EntryProvision belongs_to Entry & Provision
* [x] &ensp;&ensp;(~1) has_many
+ &ensp;&ensp;&ensp;&ensp;User has_many Entries
+ &ensp;&ensp;&ensp;&ensp;Entry has_many EntryProvisions
+ &ensp;&ensp;&ensp;&ensp;Provision has_many EntryProvisions
* [x] &ensp;&ensp;(~2) has_ many :through
+ &ensp;&ensp;&ensp;&ensp;Entry has_many Provisions through EntryProvisions
+ &ensp;&ensp;&ensp;&ensp;Provision has_many Entries through EntryProvisions

- [x] Model Validations
* [x] &ensp;&ensp;User
+ &ensp;&ensp;&ensp;&ensp;Presence: name, email
+ &ensp;&ensp;&ensp;&ensp;Uniqueness: email
* [x] &ensp;&ensp;Entry
+ &ensp;&ensp;&ensp;&ensp;Presence: date
* [x] &ensp;&ensp;EntryProvision
+ &ensp;&ensp;&ensp;&ensp;Presence: amount, unit
+ &ensp;&ensp;&ensp;&ensp;Numericality: amount > 0
* [x] &ensp;&ensp;Provision
+ &ensp;&ensp;&ensp;&ensp;Presence: name, provision_type

- [x] (~1) Class level ActiveRecord scope method

- [x] Standard User authentication: signup, login, logout, passwords

- [x] Omniauth User authentication system

- [x] Nested resource with appropriate RESTful URLs
* [x] &ensp;&ensp;Nested new route with form relating to parent resource
* [x] &ensp;&ensp;Nested index route

- [x] Validation errors displayed in forms
* [x] &ensp;&ensp;Fields enclosed within fields_with_errors class
* [x] &ensp;&ensp;Error messsages describing validation failures must be present within view

- [x] Application must be DRY
* [x] &ensp;&ensp;Controller logic should be encapsulated as model methods
* [x] &ensp;&ensp;Views should use helper methods and partials when appropriate

- [x] Do not use scaffolding
