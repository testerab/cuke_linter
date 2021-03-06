# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Nothing yet...


## [0.10.0] - 2019-10-04

### Added
 - New linters
   - FeatureWithTooManyDifferentTagsLinter
   - TestShouldUseBackgroundLinter
   - TestWithActionStepAsFinalStepLinter
   - TestWithSetupStepAfterActionStepLinter
   - TestWithSetupStepAfterVerificationStepLinter
   - TestWithSetupStepAsFinalStepLinter

### Changed
 - Improved some of the documentation and linting messages so that it is more clear what the problem is.

## [0.9.0] - 2019-09-11

### Added
 - Linters can now be temporarily enabled/disabled within arbitrary portions of a feature file, in order to allow for exceptions to the otherwise blanket set of linting rules. 

## [0.8.0] - 2019-09-07

### Changed
 - The exit codes used by the CLI have been changed in order to better facilitate taking additional actions based on them. 
   - 0 - No linting problems found
   - 1 - Linting problems found
   - 2 - Some other problem (e.g. incorrect CLI usage)

## [0.7.0] - 2019-07-12

### Added
 - Linters can now be configured en masse instead of having to configure the same property for all of them individually.

 - New linters
   - ElementWithTooManyTagsLinter
   - FeatureWithoutNameLinter
   - TestWithNoActionStepLinter
   - TestWithNoNameLinter
   - TestWithNoVerificationStepLinter

## [0.6.0] - 2019-06-25

### Added
 - File paths can now be provided for linting without the user first having to turn them into models themselves.
 - Option flags have been added to the command line interface. This will allow more flexibility when running from the command line and thereby reduce the need for writing a Ruby script for even basic usages of the gem.
 
### Changed
 - Linting is now done using a collection of model trees instead of taking only a single model tree. 

### Fixed
 - Fixed a bug in the 'pretty' formatter that was causing problems to be ordered by line number instead of being ordered by file (and then by line number within those files).
 - Added a missing `require` statement that is needed if no other code in the runtime environment has loaded the needed library already.
 - Fixed a bug where enabling/disabling a linter would trigger additional configuration of the linter, even for linters that could not be configured.
 
## [0.5.0] - 2019-05-25

### Added
 - New linters
   - BackgroundDoesMoreThanSetupLinter
   - FeatureWithoutDescriptionLinter
   - SingleTestBackgroundLinter
   - StepWithEndPeriodLinter
   - StepWithTooManyCharactersLinter
   
## [0.4.0] - 2019-05-11

### Added
 - A base linter class has been added that can be used to create custom linters more easily by providing common boilerplate code that every linter would need.

### Changed
 - Linters now return only a single problem instead of returning a collection of problems.

## [0.3.1] - 2019-04-13

### Added
 - Now declaring required Ruby version. It's always been 2.x but now the gem actually says it officially.

## [0.3.0] - 2019-04-07

### Added
 - Linter configuration: linters can now be configured (turned on/off, conditions changed, etc.) instead of having to always use the default settings

## [0.2.0] - 2019-03-19

### Added
 - New linters
   - ExampleWithoutNameLinter
   - OutlineWithSingleExampleRowLinter
   - TestWithTooManyStepsLinter


## [0.1.0] - 2019-02-10

### Added
- Custom linters, formatters, and command line usability


[Unreleased]: https://github.com/enkessler/cuke_linter/compare/v0.10.0...HEAD
[0.10.0]: https://github.com/enkessler/cuke_linter/compare/v0.9.0...v0.10.0
[0.9.0]: https://github.com/enkessler/cuke_linter/compare/v0.8.0...v0.9.0
[0.8.0]: https://github.com/enkessler/cuke_linter/compare/v0.7.0...v0.8.0
[0.7.0]: https://github.com/enkessler/cuke_linter/compare/v0.6.0...v0.7.0
[0.6.0]: https://github.com/enkessler/cuke_linter/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/enkessler/cuke_linter/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/enkessler/cuke_linter/compare/v0.3.1...v0.4.0
[0.3.1]: https://github.com/enkessler/cuke_linter/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/enkessler/cuke_linter/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/enkessler/cuke_linter/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/enkessler/cuke_linter/compare/2bbd3f29f4eb45b6e9ea7d47c5bb47182bf4fde7...v0.1.0
