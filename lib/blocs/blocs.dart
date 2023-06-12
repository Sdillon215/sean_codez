library sean_codez_blocs;

export 'package:sean_codez/blocs/sean_codez_bloc/sean_codez_bloc.dart';
export 'package:sean_codez/blocs/contact_email_bloc/contact_email_bloc.dart';



/// BLoC: Business Logic Component https://www.youtube.com/watch?v=PLHln7wHgPE
///
/// We make an distinction between two types of blocs in DMVans: module and
/// model. All model blocs can be found in this library, and all module blocs
/// can be found in client app libraries.
///
/// Simply enough, module blocs are scoped to specific app component modules.
/// They might contain local state variables or access data models that are not
/// used broadly enough to scope globally. They're provided at the top of the
/// module.
///
/// Model blocs exist for all of the models that are used broadly across
/// DMVans (eg. User, FirebaseUser, Image). Two blocs typically exist for each
/// model: a plural EntitiesBloc for queries and actions on the relevant set of
/// entities (including addition/deletion of elements), and a singular
/// SelectedEntityBloc for granular queries and actions on a specific element.
/// These are the only interfaces for acting on their respective database
/// entities and are sometimes passed as dependencies to other blocs.
///
/// For a given client app, the plural EntitiesBlocs are provided at the top of
/// the widget tree so that they are available to the entire app (though they
/// are instantiated lazily by default so that data is only streamed when
/// necessary).
///
/// The SelectedEntityBlocs, which typically take a single non-null
/// entity as an argument, are often provided at the top of widgets that
/// represent granular data for that entity.
///
/// There are two notable exception to the above pattern. DMVansBloc
/// contains client logic that is useful to all apps.dart, and AppUserBloc
/// represents a logged-in User. They are provided
/// at the very top of the widget tree and instantiated immediately.
///
/// Client apps rely on user state to determine access permissions, construct
/// database queries, and build blocs + views. In a sense a client is
/// 'granularized' for a given user upon authentication.
///
/// An astute coder might notice that, for all models except User, the
/// CreateEntity event is associated with the plural EntitiesBloc. An entity's
/// creation can thus be imagined as adding an element to the set available to
/// that user. We can then select from the EntitiesState set to build a
/// relevant module and EntityBloc. Practically, CreateEntity cannot exist in
/// a SelectedEntityBloc because the bloc and view is only constructed if
/// a relevant entity already exists and is exposed to the user.