import rnothtmlwhite from "../var/rnothtmlwhite.js";

// Strip and collapse whitespace according to HTML spec
// https://infra.spec.whatwg.org/#strip-and-collapse-ascii-whitespace
function stripAndCollapse( value ) {
	const tokens = value.match( rnothtmlwhite ) || [];
	return tokens.join( " " );
}

export default stripAndCollapse;
