# install Perl modules
cpan App::cpanminus
cpanm GD::Graph
# or ```pip install GD::Graph``` or preferably
perl -MCPAN -e shell
install GD::Graph
# to remove the ^M signature for Windows
dos2unix ic.pl
# to make it executable
chmod +x ic.pl

