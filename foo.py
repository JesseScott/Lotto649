#####

# Create an empty dictionary for associating radish names
# with vote counts
counts = {}

# Create an empty list with the names of everyone who voted
voted = []

# Clean up (munge) a string so it's easy to match against other strings
def clean_string(s):
    return s.strip().capitalize().replace("  "," ")

# Check if someone has voted already and return True or False
def has_already_voted(name):
    if name in voted:
        print(name + " has already voted! Fraud!")
        return True
    return False

# Count a vote for the radish variety named 'radish'
def count_vote(radish):
    if not radish in counts:
        # First vote for this variety
        counts[radish] = 1
    else:
        # Increment the radish count
        counts[radish] = counts[radish] + 1

for line in open("data/radish.txt"):
    line = line.strip()
    name, vote = line.split(" - ")
    name = clean_string(name)
    vote = clean_string(vote)

    if not has_already_voted(name):
        count_vote(vote)
    voted.append(name)

print("\nResults:\n")
for name in counts:
    print(name + ": " + str(counts[name]))

# Record the winning name and the votes cast for it
winner_name = "No winner"
winner_votes = 0

for name in counts:
    if counts[name] > winner_votes:
        winner_votes = counts[name]
        winner_name = name

print("The winner is: " + winner_name + " with " + str(winner_votes))
