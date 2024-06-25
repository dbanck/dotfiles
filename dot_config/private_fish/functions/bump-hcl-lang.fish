function bump-hcl-lang
	set rev (git -C $HOME/Projects/hcl-lang rev-parse HEAD)
	set revshort (git -C $HOME/Projects/hcl-lang rev-parse --short HEAD)
	echo "Bumping hcl-lang to $rev"
	go get "github.com/hashicorp/hcl-lang@$rev"
	go mod tidy
	git add go.sum go.mod
	git commit -m "Bump hcl-lang to `$revshort`"
end
