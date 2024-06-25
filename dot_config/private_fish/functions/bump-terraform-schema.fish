function bump-terraform-schema
	set rev (git -C $HOME/Projects/terraform-schema rev-parse HEAD)
	set revshort (git -C $HOME/Projects/terraform-schema rev-parse --short HEAD)
	echo "Bumping terraform-schema to $rev"
	go get "github.com/hashicorp/terraform-schema@$rev"
	go mod tidy
	git add go.sum go.mod
	git commit -m "Bump terraform-schema to `$revshort`"
end
