package message

import (
	"{{.BasePackage}}/{{.Package}}"
	"github.com/metagogs/gogs/session"
)

{{range .Components}}
{{range .Fields}}

func Send{{.Name}}(s *session.Session, in *{{.Package}}.{{.Name}}) error {
	return s.SendMessage(in, "{{.Name}}")
}

{{end}}
{{end}}
