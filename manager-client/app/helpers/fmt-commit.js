import Ember from 'ember';

export default Ember.Handlebars.makeBoundHelper(function(sha1, url) {
  if (Ember.isNone(url)) { return; }
  return new Ember.Handlebars.SafeString("(<a href='" + url +"/commit"+ sha1 "'>" + sha1 + "</a>)");
});
