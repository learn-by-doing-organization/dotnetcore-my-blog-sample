-------------------- SCRIPT TO CHECK OF DbScriptMigrationSystem -------------------------------
DECLARE @MigrationName AS VARCHAR(1000) = '004_add_more_posts'

IF EXISTS(SELECT MigrationId FROM [DbScriptMigration] WHERE MigrationName = @MigrationName)
BEGIN 
    raiserror('MIGRATION ALREADY RUNNED ON THIS DB!!! STOP EXECUTION SCRIPT', 11, 0)
    SET NOEXEC ON
END

INSERT INTO [DbScriptMigration]
    (MigrationId, MigrationName, MigrationDate)
    VALUES
    (NEWID(), @MigrationName, GETDATE())
GO
PRINT 'Insert record into [DbScriptMigration]!'
-------------------- END SCRIPT TO CHECK OF DbScriptMigrationSystem ---------------------------

INSERT INTO [dbo].[Posts]
           ([Title]
           ,[Text]
           ,[CreateDate])
     VALUES
           ('Forth post of the blog'
           ,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis enim eu augue tincidunt tincidunt. Nam luctus pharetra tortor, sit amet sodales odio bibendum non. Nulla imperdiet tempor metus, sit amet posuere justo laoreet nec. Nullam vehicula commodo posuere. Ut elementum, purus id posuere porttitor, massa purus tristique sapien, nec sollicitudin massa lectus ac erat. Nunc id tortor quis leo placerat accumsan nec scelerisque ligula. Vivamus in efficitur felis. Cras tincidunt eleifend leo ut volutpat. Sed ut ligula eu risus pretium volutpat sit amet vel lorem. Aliquam gravida blandit risus non laoreet.

Praesent felis velit, interdum ac laoreet luctus, finibus vel lorem. In vitae dolor ipsum. Quisque pretium eu ex in egestas. Nam imperdiet in diam eu maximus. Nulla tristique magna velit, vitae scelerisque augue facilisis id. Nulla in ultricies ex, nec lobortis felis. Nam nec vestibulum libero, ut laoreet tellus. Pellentesque ut metus sed nulla fermentum consequat at nec ligula. Donec pretium nisi rhoncus elit tincidunt, eu euismod ligula semper.

In at enim sit amet magna luctus sagittis et quis lacus. In blandit enim risus, eu pharetra nibh pharetra id. Nullam diam augue, fermentum eget aliquam sed, ornare sit amet dolor. Fusce fringilla vestibulum aliquam. Curabitur id laoreet lectus. Proin pretium nunc vel sem bibendum fringilla. Aliquam rhoncus neque enim, pellentesque consequat turpis gravida in. Ut at massa non augue fringilla pellentesque. Mauris consectetur pellentesque mauris molestie ullamcorper. Vivamus at nisi sed turpis cursus porttitor a sed enim. Quisque nec lorem ultrices, vestibulum sapien et, sollicitudin arcu. Donec augue risus, eleifend a tempus eu, hendrerit a quam.

Sed ex arcu, fringilla at molestie sit amet, accumsan id odio. Sed ut est orci. Suspendisse convallis mauris in fringilla facilisis. Nulla sit amet orci sed elit sollicitudin placerat. Pellentesque blandit, eros ut blandit volutpat, elit diam pulvinar tellus, vel vulputate urna augue at nisi. Suspendisse id odio quis risus dignissim elementum. Suspendisse vitae interdum dui, id euismod lacus. Mauris sit amet nisi nec diam fringilla lacinia. Nulla mauris nulla, vestibulum a convallis a, imperdiet nec neque. Phasellus aliquet sollicitudin mauris, id congue est varius sit amet. Etiam imperdiet mauris id dui iaculis commodo. Vivamus at nisl ligula. Cras iaculis varius orci, non congue nunc commodo ut.

Donec a justo porttitor, placerat ante sed, ullamcorper quam. Aliquam dapibus velit leo, at fermentum libero iaculis eget. Nullam eu mattis lorem, ac vulputate libero. Duis quis dui eget leo condimentum eleifend a et nisi. Suspendisse lorem tortor, pharetra vitae ornare vel, ullamcorper eu odio. Sed suscipit iaculis massa eu varius. Proin augue quam, ullamcorper quis velit sed, ultrices condimentum orci. Vivamus nisi leo, convallis fermentum dolor quis, suscipit iaculis nisi.'
           ,GETDATE())
GO

INSERT INTO [dbo].[Posts]
           ([Title]
           ,[Text]
           ,[CreateDate])
     VALUES
           ('Fifth post of the blog'
           ,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis enim eu augue tincidunt tincidunt. Nam luctus pharetra tortor, sit amet sodales odio bibendum non. Nulla imperdiet tempor metus, sit amet posuere justo laoreet nec. Nullam vehicula commodo posuere. Ut elementum, purus id posuere porttitor, massa purus tristique sapien, nec sollicitudin massa lectus ac erat. Nunc id tortor quis leo placerat accumsan nec scelerisque ligula. Vivamus in efficitur felis. Cras tincidunt eleifend leo ut volutpat. Sed ut ligula eu risus pretium volutpat sit amet vel lorem. Aliquam gravida blandit risus non laoreet.

Praesent felis velit, interdum ac laoreet luctus, finibus vel lorem. In vitae dolor ipsum. Quisque pretium eu ex in egestas. Nam imperdiet in diam eu maximus. Nulla tristique magna velit, vitae scelerisque augue facilisis id. Nulla in ultricies ex, nec lobortis felis. Nam nec vestibulum libero, ut laoreet tellus. Pellentesque ut metus sed nulla fermentum consequat at nec ligula. Donec pretium nisi rhoncus elit tincidunt, eu euismod ligula semper.

In at enim sit amet magna luctus sagittis et quis lacus. In blandit enim risus, eu pharetra nibh pharetra id. Nullam diam augue, fermentum eget aliquam sed, ornare sit amet dolor. Fusce fringilla vestibulum aliquam. Curabitur id laoreet lectus. Proin pretium nunc vel sem bibendum fringilla. Aliquam rhoncus neque enim, pellentesque consequat turpis gravida in. Ut at massa non augue fringilla pellentesque. Mauris consectetur pellentesque mauris molestie ullamcorper. Vivamus at nisi sed turpis cursus porttitor a sed enim. Quisque nec lorem ultrices, vestibulum sapien et, sollicitudin arcu. Donec augue risus, eleifend a tempus eu, hendrerit a quam.

Sed ex arcu, fringilla at molestie sit amet, accumsan id odio. Sed ut est orci. Suspendisse convallis mauris in fringilla facilisis. Nulla sit amet orci sed elit sollicitudin placerat. Pellentesque blandit, eros ut blandit volutpat, elit diam pulvinar tellus, vel vulputate urna augue at nisi. Suspendisse id odio quis risus dignissim elementum. Suspendisse vitae interdum dui, id euismod lacus. Mauris sit amet nisi nec diam fringilla lacinia. Nulla mauris nulla, vestibulum a convallis a, imperdiet nec neque. Phasellus aliquet sollicitudin mauris, id congue est varius sit amet. Etiam imperdiet mauris id dui iaculis commodo. Vivamus at nisl ligula. Cras iaculis varius orci, non congue nunc commodo ut.

Donec a justo porttitor, placerat ante sed, ullamcorper quam. Aliquam dapibus velit leo, at fermentum libero iaculis eget. Nullam eu mattis lorem, ac vulputate libero. Duis quis dui eget leo condimentum eleifend a et nisi. Suspendisse lorem tortor, pharetra vitae ornare vel, ullamcorper eu odio. Sed suscipit iaculis massa eu varius. Proin augue quam, ullamcorper quis velit sed, ultrices condimentum orci. Vivamus nisi leo, convallis fermentum dolor quis, suscipit iaculis nisi.'
           ,GETDATE())
GO

INSERT INTO [dbo].[Posts]
           ([Title]
           ,[Text]
           ,[CreateDate])
     VALUES
           ('Sixth post of the blog'
           ,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis enim eu augue tincidunt tincidunt. Nam luctus pharetra tortor, sit amet sodales odio bibendum non. Nulla imperdiet tempor metus, sit amet posuere justo laoreet nec. Nullam vehicula commodo posuere. Ut elementum, purus id posuere porttitor, massa purus tristique sapien, nec sollicitudin massa lectus ac erat. Nunc id tortor quis leo placerat accumsan nec scelerisque ligula. Vivamus in efficitur felis. Cras tincidunt eleifend leo ut volutpat. Sed ut ligula eu risus pretium volutpat sit amet vel lorem. Aliquam gravida blandit risus non laoreet.

Praesent felis velit, interdum ac laoreet luctus, finibus vel lorem. In vitae dolor ipsum. Quisque pretium eu ex in egestas. Nam imperdiet in diam eu maximus. Nulla tristique magna velit, vitae scelerisque augue facilisis id. Nulla in ultricies ex, nec lobortis felis. Nam nec vestibulum libero, ut laoreet tellus. Pellentesque ut metus sed nulla fermentum consequat at nec ligula. Donec pretium nisi rhoncus elit tincidunt, eu euismod ligula semper.

In at enim sit amet magna luctus sagittis et quis lacus. In blandit enim risus, eu pharetra nibh pharetra id. Nullam diam augue, fermentum eget aliquam sed, ornare sit amet dolor. Fusce fringilla vestibulum aliquam. Curabitur id laoreet lectus. Proin pretium nunc vel sem bibendum fringilla. Aliquam rhoncus neque enim, pellentesque consequat turpis gravida in. Ut at massa non augue fringilla pellentesque. Mauris consectetur pellentesque mauris molestie ullamcorper. Vivamus at nisi sed turpis cursus porttitor a sed enim. Quisque nec lorem ultrices, vestibulum sapien et, sollicitudin arcu. Donec augue risus, eleifend a tempus eu, hendrerit a quam.

Sed ex arcu, fringilla at molestie sit amet, accumsan id odio. Sed ut est orci. Suspendisse convallis mauris in fringilla facilisis. Nulla sit amet orci sed elit sollicitudin placerat. Pellentesque blandit, eros ut blandit volutpat, elit diam pulvinar tellus, vel vulputate urna augue at nisi. Suspendisse id odio quis risus dignissim elementum. Suspendisse vitae interdum dui, id euismod lacus. Mauris sit amet nisi nec diam fringilla lacinia. Nulla mauris nulla, vestibulum a convallis a, imperdiet nec neque. Phasellus aliquet sollicitudin mauris, id congue est varius sit amet. Etiam imperdiet mauris id dui iaculis commodo. Vivamus at nisl ligula. Cras iaculis varius orci, non congue nunc commodo ut.

Donec a justo porttitor, placerat ante sed, ullamcorper quam. Aliquam dapibus velit leo, at fermentum libero iaculis eget. Nullam eu mattis lorem, ac vulputate libero. Duis quis dui eget leo condimentum eleifend a et nisi. Suspendisse lorem tortor, pharetra vitae ornare vel, ullamcorper eu odio. Sed suscipit iaculis massa eu varius. Proin augue quam, ullamcorper quis velit sed, ultrices condimentum orci. Vivamus nisi leo, convallis fermentum dolor quis, suscipit iaculis nisi.'
           ,GETDATE())
GO

INSERT INTO [dbo].[Posts]
           ([Title]
           ,[Text]
           ,[CreateDate])
     VALUES
           ('Seventh post of the blog'
           ,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis enim eu augue tincidunt tincidunt. Nam luctus pharetra tortor, sit amet sodales odio bibendum non. Nulla imperdiet tempor metus, sit amet posuere justo laoreet nec. Nullam vehicula commodo posuere. Ut elementum, purus id posuere porttitor, massa purus tristique sapien, nec sollicitudin massa lectus ac erat. Nunc id tortor quis leo placerat accumsan nec scelerisque ligula. Vivamus in efficitur felis. Cras tincidunt eleifend leo ut volutpat. Sed ut ligula eu risus pretium volutpat sit amet vel lorem. Aliquam gravida blandit risus non laoreet.

Praesent felis velit, interdum ac laoreet luctus, finibus vel lorem. In vitae dolor ipsum. Quisque pretium eu ex in egestas. Nam imperdiet in diam eu maximus. Nulla tristique magna velit, vitae scelerisque augue facilisis id. Nulla in ultricies ex, nec lobortis felis. Nam nec vestibulum libero, ut laoreet tellus. Pellentesque ut metus sed nulla fermentum consequat at nec ligula. Donec pretium nisi rhoncus elit tincidunt, eu euismod ligula semper.

In at enim sit amet magna luctus sagittis et quis lacus. In blandit enim risus, eu pharetra nibh pharetra id. Nullam diam augue, fermentum eget aliquam sed, ornare sit amet dolor. Fusce fringilla vestibulum aliquam. Curabitur id laoreet lectus. Proin pretium nunc vel sem bibendum fringilla. Aliquam rhoncus neque enim, pellentesque consequat turpis gravida in. Ut at massa non augue fringilla pellentesque. Mauris consectetur pellentesque mauris molestie ullamcorper. Vivamus at nisi sed turpis cursus porttitor a sed enim. Quisque nec lorem ultrices, vestibulum sapien et, sollicitudin arcu. Donec augue risus, eleifend a tempus eu, hendrerit a quam.

Sed ex arcu, fringilla at molestie sit amet, accumsan id odio. Sed ut est orci. Suspendisse convallis mauris in fringilla facilisis. Nulla sit amet orci sed elit sollicitudin placerat. Pellentesque blandit, eros ut blandit volutpat, elit diam pulvinar tellus, vel vulputate urna augue at nisi. Suspendisse id odio quis risus dignissim elementum. Suspendisse vitae interdum dui, id euismod lacus. Mauris sit amet nisi nec diam fringilla lacinia. Nulla mauris nulla, vestibulum a convallis a, imperdiet nec neque. Phasellus aliquet sollicitudin mauris, id congue est varius sit amet. Etiam imperdiet mauris id dui iaculis commodo. Vivamus at nisl ligula. Cras iaculis varius orci, non congue nunc commodo ut.

Donec a justo porttitor, placerat ante sed, ullamcorper quam. Aliquam dapibus velit leo, at fermentum libero iaculis eget. Nullam eu mattis lorem, ac vulputate libero. Duis quis dui eget leo condimentum eleifend a et nisi. Suspendisse lorem tortor, pharetra vitae ornare vel, ullamcorper eu odio. Sed suscipit iaculis massa eu varius. Proin augue quam, ullamcorper quis velit sed, ultrices condimentum orci. Vivamus nisi leo, convallis fermentum dolor quis, suscipit iaculis nisi.'
           ,GETDATE())
GO

INSERT INTO [dbo].[Posts]
           ([Title]
           ,[Text]
           ,[CreateDate])
     VALUES
           ('Eight post of the blog'
           ,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis enim eu augue tincidunt tincidunt. Nam luctus pharetra tortor, sit amet sodales odio bibendum non. Nulla imperdiet tempor metus, sit amet posuere justo laoreet nec. Nullam vehicula commodo posuere. Ut elementum, purus id posuere porttitor, massa purus tristique sapien, nec sollicitudin massa lectus ac erat. Nunc id tortor quis leo placerat accumsan nec scelerisque ligula. Vivamus in efficitur felis. Cras tincidunt eleifend leo ut volutpat. Sed ut ligula eu risus pretium volutpat sit amet vel lorem. Aliquam gravida blandit risus non laoreet.

Praesent felis velit, interdum ac laoreet luctus, finibus vel lorem. In vitae dolor ipsum. Quisque pretium eu ex in egestas. Nam imperdiet in diam eu maximus. Nulla tristique magna velit, vitae scelerisque augue facilisis id. Nulla in ultricies ex, nec lobortis felis. Nam nec vestibulum libero, ut laoreet tellus. Pellentesque ut metus sed nulla fermentum consequat at nec ligula. Donec pretium nisi rhoncus elit tincidunt, eu euismod ligula semper.

In at enim sit amet magna luctus sagittis et quis lacus. In blandit enim risus, eu pharetra nibh pharetra id. Nullam diam augue, fermentum eget aliquam sed, ornare sit amet dolor. Fusce fringilla vestibulum aliquam. Curabitur id laoreet lectus. Proin pretium nunc vel sem bibendum fringilla. Aliquam rhoncus neque enim, pellentesque consequat turpis gravida in. Ut at massa non augue fringilla pellentesque. Mauris consectetur pellentesque mauris molestie ullamcorper. Vivamus at nisi sed turpis cursus porttitor a sed enim. Quisque nec lorem ultrices, vestibulum sapien et, sollicitudin arcu. Donec augue risus, eleifend a tempus eu, hendrerit a quam.

Sed ex arcu, fringilla at molestie sit amet, accumsan id odio. Sed ut est orci. Suspendisse convallis mauris in fringilla facilisis. Nulla sit amet orci sed elit sollicitudin placerat. Pellentesque blandit, eros ut blandit volutpat, elit diam pulvinar tellus, vel vulputate urna augue at nisi. Suspendisse id odio quis risus dignissim elementum. Suspendisse vitae interdum dui, id euismod lacus. Mauris sit amet nisi nec diam fringilla lacinia. Nulla mauris nulla, vestibulum a convallis a, imperdiet nec neque. Phasellus aliquet sollicitudin mauris, id congue est varius sit amet. Etiam imperdiet mauris id dui iaculis commodo. Vivamus at nisl ligula. Cras iaculis varius orci, non congue nunc commodo ut.

Donec a justo porttitor, placerat ante sed, ullamcorper quam. Aliquam dapibus velit leo, at fermentum libero iaculis eget. Nullam eu mattis lorem, ac vulputate libero. Duis quis dui eget leo condimentum eleifend a et nisi. Suspendisse lorem tortor, pharetra vitae ornare vel, ullamcorper eu odio. Sed suscipit iaculis massa eu varius. Proin augue quam, ullamcorper quis velit sed, ultrices condimentum orci. Vivamus nisi leo, convallis fermentum dolor quis, suscipit iaculis nisi.'
           ,GETDATE())
GO



-- Update some post set CategoryId = 1
UPDATE [dbo].[Posts] SET CategoryId = 1 WHERE Id IN (
select id from [dbo].[Posts] where ( Id % 2 ) = 0)


-- Update some post set CategoryId = 2
UPDATE [dbo].[Posts] SET CategoryId = 2 WHERE Id IN (
select id from[dbo].[Posts]  where ( Id % 2 ) = 1 )



-- Update some post set Author = 'Tom'
UPDATE [dbo].[Posts] SET Author = 'Tom' WHERE Id IN (
select id from [dbo].[Posts] where ( Id % 2 ) = 0)


-- Update some post set Author = 'Jim'
UPDATE [dbo].[Posts] SET Author = 'Jim' WHERE Id IN (
select id from[dbo].[Posts]  where ( Id % 2 ) = 1 )


-- INSERT SOME RECORDS PostTags, maybe postId can be not exists - change with exists ones
INSERT INTO [dbo].[PostTags]
           ([PostId]
           ,[TagId])
     VALUES
           (4,1),
           (5,2),
           (6,1),
           (7,2),
           (8,1)

---------------- FOOTER OF DbScriptMigrationSystem : REMEMBER TO INSERT -----------------------
SET NOEXEC OFF