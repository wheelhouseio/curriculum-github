# Content Authoring FAQ
This is a brief, non-comprehensive, likely out-of-date document

## Configurator Class
The app uses the course-level `configurator_class` attribute to determine which, if any, configuration script IN THE CERTIFY APP to use during enrollment.

This *HAS* to match a real class name in the `certify` repo or nothing will happen during the student enrollment process for this course

## Common Problems/Fixes

### IDs must be unique
Any `id:` in the YAML files must be unique, otherwise each successive element with `id X` will overwrite the previous `X`.

### Filenames must end in YML
If the filename doesn't end in `.yml`.

--- 

## Fields that Support Markdown
In general, assume nothing supports Markdown rendering.

### Image Slides
```
screens:
	- image-slide:
	  	presenter-script: "Markdown *enabled*"
```

### Video Slides
```
screens:
	- video-slide:
	  	video-script: "Markdown *enabled*"
```

### Lab Slides
```
screens:
	- lab:
		introduction: "Markdown *enabled*"
		presenter-script: "Markdown *enabled*"
		steps:
	  		- description: "Markdown *enabled*"
```

### Remote Slides
```
screens:
	- remote-slide:
		url: "Markdown *enabled* for the retrieved content"
		presenter-script: "Markdown *enabled*"
```

### Quiz/Polls/Answers
```
screens:
	- quiz:
		presenter-script: "Markdown *enabled*"
		questions:
			-	title: "Markdown *enabled*"
				options:
					- value: "Markdown *enabled*"
					  response: "Markdown *enabled*"
```

## Supported Markdown Elements

The Lab Introduction and Image Presenter Script are both appropriate for creating large content blocks above a lab or above an image. Both could be used to create a slide with only text.

- [x] Paragraphs, Headers, Blockquotes 
- [x] Phrase Emphasis
- [x] Lists (ordered and unordered)
- [x] Links (Recommend against using these until they default to target=”_blank”)
- [x] Images (I don’t recommend using unless the url persisting is guaranteed)
- [x] Inline Code

Codeblocks are not currently rendered correctly.

To embed videos, use the following code (replacing the youtube video reference code):

```
<div class='container' data-video-url='https://youtu.be/R8OAwrcMlRw'></div>
```

---

## Webhook payloads we process

https://developer.github.com/webhooks/#events

### create
We support *branches* for the CreateEvent

* `verification-type: branch-created`

### delete
We support *branches* and *tags* for the DeleteEvent

* `verification-type: branch-deleted`
* `verification-type: tag-deleted`

### fork
We support the ForkEvent

* `verification-type: fork-exists`

### issues
We support four different payloads for IssuesEvent.

* created `verification-type: issue-created`
* labeled `verification-type: issue-labeled`
* closed `verification-type: issue-closed`
* assigned `verification-type: issue-assigned`

We can also verify that an issue was specifically assigned to the user

* `verification-type: issue-assigned-to-self`

Or was asigned to anyone else

* `issue-assigned`

### issue_comment

We support two different payloads for IssueCommentEvent.

* created `verification-type: issue-comment-created`
* mention `verification-type: issue-comment-mention`

### pull_request

We support four of the payloads for the PullRequestEvent.

* `verification-type: pull-request`
* `verification-type: pull-request-merged`
* `verification-type: pull-request-closed`
* `verification-type: pull-request-assigned`

We can also verify that an pull_request was specifically assigned to the user

* `verification-type: pull-request-assigned-to-self`

Or was assigned to anyone else:

* `pull-request-assigned`




### pull\_request_comment

We support the PullRequestReviewCommentEvent.

* `verification-type: pull-request-review-comment`

### push

We support the PushEvent.

The push event looks for one or more files to be either created or modified as part of the push event.

* `verification-type: file-created`
* `verification-type: file-modified`
