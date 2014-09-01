package isijia

import org.apache.commons.lang.builder.HashCodeBuilder

class MemberRole implements Serializable {

	private static final long serialVersionUID = 1

	Member member
	Role role

	boolean equals(other) {
		if (!(other instanceof MemberRole)) {
			return false
		}

		other.member?.id == member?.id &&
		other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (member) builder.append(member.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static MemberRole get(long memberId, long roleId) {
		MemberRole.where {
			member == Member.load(memberId) &&
			role == Role.load(roleId)
		}.get()
	}

	static boolean exists(long memberId, long roleId) {
		MemberRole.where {
			member == Member.load(memberId) &&
			role == Role.load(roleId)
		}.count() > 0
	}

	static MemberRole create(Member member, Role role, boolean flush = false) {
		def instance = new MemberRole(member: member, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Member u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = MemberRole.where {
			member == Member.load(u.id) &&
			role == Role.load(r.id)
		}.deleteAll()

		if (flush) { MemberRole.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(Member u, boolean flush = false) {
		if (u == null) return

		MemberRole.where {
			member == Member.load(u.id)
		}.deleteAll()

		if (flush) { MemberRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		MemberRole.where {
			role == Role.load(r.id)
		}.deleteAll()

		if (flush) { MemberRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, MemberRole ur ->
			if (ur.member == null) return
			boolean existing = false
			MemberRole.withNewSession {
				existing = MemberRole.exists(ur.member.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['role', 'member']
		version false
	}
}
