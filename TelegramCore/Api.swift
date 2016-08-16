
private final class FunctionDescription: CustomStringConvertible {
    let generator: () -> String
    init(_ generator: () -> String) {
        self.generator = generator
    }

    var description: String {
        return self.generator()
    }
}

private let parsers: [Int32 : (BufferReader) -> Any?] = {
    var dict: [Int32 : (BufferReader) -> Any?] = [:]
    dict[-1471112230] = { return $0.readInt32() }
    dict[570911930] = { return $0.readInt64() }
    dict[571523412] = { return $0.readDouble() }
    dict[-1255641564] = { return parseString($0) }
    dict[-1240849242] = { return Api.messages.StickerSet.parse_stickerSet($0) }
    dict[1756342228] = { return Api.InputGeoPlaceName.parse_inputGeoPlaceName($0) }
    dict[-457104426] = { return Api.InputGeoPoint.parse_inputGeoPointEmpty($0) }
    dict[-206066487] = { return Api.InputGeoPoint.parse_inputGeoPoint($0) }
    dict[1089011754] = { return Api.messages.Chat.parse_chat($0) }
    dict[771925524] = { return Api.ChatFull.parse_chatFull($0) }
    dict[-1009430225] = { return Api.ChatFull.parse_channelFull($0) }
    dict[-925415106] = { return Api.ChatParticipant.parse_chatParticipant($0) }
    dict[-636267638] = { return Api.ChatParticipant.parse_chatParticipantCreator($0) }
    dict[-489233354] = { return Api.ChatParticipant.parse_chatParticipantAdmin($0) }
    dict[1567990072] = { return Api.updates.Difference.parse_differenceEmpty($0) }
    dict[16030880] = { return Api.updates.Difference.parse_difference($0) }
    dict[-1459938943] = { return Api.updates.Difference.parse_differenceSlice($0) }
    dict[1200838592] = { return Api.SchemeMethod.parse_schemeMethod($0) }
    dict[-1377390588] = { return Api.InputPhotoCrop.parse_inputPhotoCropAuto($0) }
    dict[-644787419] = { return Api.InputPhotoCrop.parse_inputPhotoCrop($0) }
    dict[590459437] = { return Api.Photo.parse_photoEmpty($0) }
    dict[1436402146] = { return Api.Photo.parse_wallPhoto($0) }
    dict[-840088834] = { return Api.Photo.parse_photo($0) }
    dict[-1683826688] = { return Api.Chat.parse_chatEmpty($0) }
    dict[120753115] = { return Api.Chat.parse_chatForbidden($0) }
    dict[-652419756] = { return Api.Chat.parse_chat($0) }
    dict[-1588737454] = { return Api.Chat.parse_channel($0) }
    dict[-2059962289] = { return Api.Chat.parse_channelForbidden($0) }
    dict[1516793212] = { return Api.ChatInvite.parse_chatInviteAlready($0) }
    dict[-1813406880] = { return Api.ChatInvite.parse_chatInvite($0) }
    dict[1650639724] = { return Api.contacts.Requests.parse_requests($0) }
    dict[1868061580] = { return Api.contacts.Requests.parse_requestsSlice($0) }
    dict[-177282392] = { return Api.channels.ChannelParticipants.parse_channelParticipants($0) }
    dict[941183887] = { return Api.GeoPlaceName.parse_geoPlaceName($0) }
    dict[1496513539] = { return Api.UserFull.parse_userFull($0) }
    dict[-265263912] = { return Api.InputPeerNotifyEvents.parse_inputPeerNotifyEventsEmpty($0) }
    dict[-395694988] = { return Api.InputPeerNotifyEvents.parse_inputPeerNotifyEventsAll($0) }
    dict[-292807034] = { return Api.InputChannel.parse_inputChannelEmpty($0) }
    dict[-1343524562] = { return Api.InputChannel.parse_inputChannel($0) }
    dict[98092748] = { return Api.DcOption.parse_dcOption($0) }
    dict[-399216813] = { return Api.MessageGroup.parse_messageGroup($0) }
    dict[-1212732749] = { return Api.account.PasswordSettings.parse_passwordSettings($0) }
    dict[-1987579119] = { return Api.help.AppUpdate.parse_appUpdate($0) }
    dict[-1000708810] = { return Api.help.AppUpdate.parse_noAppUpdate($0) }
    dict[-791039645] = { return Api.channels.ChannelParticipant.parse_channelParticipant($0) }
    dict[-1767848386] = { return Api.contacts.SentLink.parse_sentLink($0) }
    dict[-1299865402] = { return Api.ChannelParticipantRole.parse_channelRoleEmpty($0) }
    dict[-1776756363] = { return Api.ChannelParticipantRole.parse_channelRoleModerator($0) }
    dict[-2113143156] = { return Api.ChannelParticipantRole.parse_channelRoleEditor($0) }
    dict[-1432995067] = { return Api.storage.FileType.parse_fileUnknown($0) }
    dict[8322574] = { return Api.storage.FileType.parse_fileJpeg($0) }
    dict[-891180321] = { return Api.storage.FileType.parse_fileGif($0) }
    dict[172975040] = { return Api.storage.FileType.parse_filePng($0) }
    dict[-1373745011] = { return Api.storage.FileType.parse_filePdf($0) }
    dict[1384777335] = { return Api.storage.FileType.parse_fileMp3($0) }
    dict[1258941372] = { return Api.storage.FileType.parse_fileMov($0) }
    dict[1086091090] = { return Api.storage.FileType.parse_filePartial($0) }
    dict[-1278304028] = { return Api.storage.FileType.parse_fileMp4($0) }
    dict[276907596] = { return Api.storage.FileType.parse_fileWebp($0) }
    dict[406307684] = { return Api.InputEncryptedFile.parse_inputEncryptedFileEmpty($0) }
    dict[1690108678] = { return Api.InputEncryptedFile.parse_inputEncryptedFileUploaded($0) }
    dict[1511503333] = { return Api.InputEncryptedFile.parse_inputEncryptedFile($0) }
    dict[767652808] = { return Api.InputEncryptedFile.parse_inputEncryptedFileBigUploaded($0) }
    dict[1443858741] = { return Api.messages.SentEncryptedMessage.parse_sentEncryptedMessage($0) }
    dict[-1802240206] = { return Api.messages.SentEncryptedMessage.parse_sentEncryptedFile($0) }
    dict[524838915] = { return Api.ExportedMessageLink.parse_exportedMessageLink($0) }
    dict[-16553231] = { return Api.auth.Authorization.parse_authorization($0) }
    dict[-181407105] = { return Api.InputFile.parse_inputFile($0) }
    dict[-95482955] = { return Api.InputFile.parse_inputFileBig($0) }
    dict[-1649296275] = { return Api.Peer.parse_peerUser($0) }
    dict[-1160714821] = { return Api.Peer.parse_peerChat($0) }
    dict[-1109531342] = { return Api.Peer.parse_peerChannel($0) }
    dict[164646985] = { return Api.UserStatus.parse_userStatusEmpty($0) }
    dict[-306628279] = { return Api.UserStatus.parse_userStatusOnline($0) }
    dict[9203775] = { return Api.UserStatus.parse_userStatusOffline($0) }
    dict[-496024847] = { return Api.UserStatus.parse_userStatusRecently($0) }
    dict[129960444] = { return Api.UserStatus.parse_userStatusLastWeek($0) }
    dict[2011940674] = { return Api.UserStatus.parse_userStatusLastMonth($0) }
    dict[1728035348] = { return Api.Dialog.parse_dialog($0) }
    dict[-1350696044] = { return Api.help.AppChangelog.parse_appChangelogEmpty($0) }
    dict[1181279933] = { return Api.help.AppChangelog.parse_appChangelog($0) }
    dict[381645902] = { return Api.SendMessageAction.parse_sendMessageTypingAction($0) }
    dict[-44119819] = { return Api.SendMessageAction.parse_sendMessageCancelAction($0) }
    dict[-1584933265] = { return Api.SendMessageAction.parse_sendMessageRecordVideoAction($0) }
    dict[-718310409] = { return Api.SendMessageAction.parse_sendMessageRecordAudioAction($0) }
    dict[393186209] = { return Api.SendMessageAction.parse_sendMessageGeoLocationAction($0) }
    dict[1653390447] = { return Api.SendMessageAction.parse_sendMessageChooseContactAction($0) }
    dict[-378127636] = { return Api.SendMessageAction.parse_sendMessageUploadVideoAction($0) }
    dict[-212740181] = { return Api.SendMessageAction.parse_sendMessageUploadAudioAction($0) }
    dict[-1441998364] = { return Api.SendMessageAction.parse_sendMessageUploadDocumentAction($0) }
    dict[-774682074] = { return Api.SendMessageAction.parse_sendMessageUploadPhotoAction($0) }
    dict[-1137792208] = { return Api.PrivacyKey.parse_privacyKeyStatusTimestamp($0) }
    dict[1343122938] = { return Api.PrivacyKey.parse_privacyKeyChatInvite($0) }
    dict[1318109142] = { return Api.Update.parse_updateMessageID($0) }
    dict[-782376883] = { return Api.Update.parse_updateRestoreMessages($0) }
    dict[125178264] = { return Api.Update.parse_updateChatParticipants($0) }
    dict[469489699] = { return Api.Update.parse_updateUserStatus($0) }
    dict[628472761] = { return Api.Update.parse_updateContactRegistered($0) }
    dict[1602468195] = { return Api.Update.parse_updateContactLocated($0) }
    dict[1869154659] = { return Api.Update.parse_updateActivation($0) }
    dict[-1895411046] = { return Api.Update.parse_updateNewAuthorization($0) }
    dict[-623425266] = { return Api.Update.parse_updatePhoneCallRequested($0) }
    dict[1443495816] = { return Api.Update.parse_updatePhoneCallConfirmed($0) }
    dict[833498306] = { return Api.Update.parse_updatePhoneCallDeclined($0) }
    dict[-1791935732] = { return Api.Update.parse_updateUserPhoto($0) }
    dict[314359194] = { return Api.Update.parse_updateNewEncryptedMessage($0) }
    dict[386986326] = { return Api.Update.parse_updateEncryptedChatTyping($0) }
    dict[-1264392051] = { return Api.Update.parse_updateEncryption($0) }
    dict[956179895] = { return Api.Update.parse_updateEncryptedMessagesRead($0) }
    dict[1851755554] = { return Api.Update.parse_updateChatParticipantDelete($0) }
    dict[-1906403213] = { return Api.Update.parse_updateDcOptions($0) }
    dict[-2131957734] = { return Api.Update.parse_updateUserBlocked($0) }
    dict[-1094555409] = { return Api.Update.parse_updateNotifySettings($0) }
    dict[1548249383] = { return Api.Update.parse_updateUserTyping($0) }
    dict[-1704596961] = { return Api.Update.parse_updateChatUserTyping($0) }
    dict[-1489818765] = { return Api.Update.parse_updateUserName($0) }
    dict[942527460] = { return Api.Update.parse_updateServiceNotification($0) }
    dict[-298113238] = { return Api.Update.parse_updatePrivacy($0) }
    dict[314130811] = { return Api.Update.parse_updateUserPhone($0) }
    dict[522914557] = { return Api.Update.parse_updateNewMessage($0) }
    dict[777696872] = { return Api.Update.parse_updateReadMessages($0) }
    dict[-1576161051] = { return Api.Update.parse_updateDeleteMessages($0) }
    dict[-1721631396] = { return Api.Update.parse_updateReadHistoryInbox($0) }
    dict[791617983] = { return Api.Update.parse_updateReadHistoryOutbox($0) }
    dict[-1657903163] = { return Api.Update.parse_updateContactLink($0) }
    dict[1757493555] = { return Api.Update.parse_updateReadMessagesContents($0) }
    dict[-364179876] = { return Api.Update.parse_updateChatParticipantAdd($0) }
    dict[2139689491] = { return Api.Update.parse_updateWebPage($0) }
    dict[-1227598250] = { return Api.Update.parse_updateChannel($0) }
    dict[-1016324548] = { return Api.Update.parse_updateChannelGroup($0) }
    dict[1656358105] = { return Api.Update.parse_updateNewChannelMessage($0) }
    dict[1108669311] = { return Api.Update.parse_updateReadChannelInbox($0) }
    dict[-1015733815] = { return Api.Update.parse_updateDeleteChannelMessages($0) }
    dict[-1734268085] = { return Api.Update.parse_updateChannelMessageViews($0) }
    dict[1855224129] = { return Api.Update.parse_updateChatAdmins($0) }
    dict[-1232070311] = { return Api.Update.parse_updateChatParticipantAdmin($0) }
    dict[1753886890] = { return Api.Update.parse_updateNewStickerSet($0) }
    dict[-253774767] = { return Api.Update.parse_updateStickerSetsOrder($0) }
    dict[1135492588] = { return Api.Update.parse_updateStickerSets($0) }
    dict[-1821035490] = { return Api.Update.parse_updateSavedGifs($0) }
    dict[457133559] = { return Api.Update.parse_updateEditChannelMessage($0) }
    dict[-1738988427] = { return Api.Update.parse_updateChannelPinnedMessage($0) }
    dict[-352032773] = { return Api.Update.parse_updateChannelTooLong($0) }
    dict[-1500747636] = { return Api.Update.parse_updateBotCallbackQuery($0) }
    dict[-469536605] = { return Api.Update.parse_updateEditMessage($0) }
    dict[750622127] = { return Api.Update.parse_updateInlineBotCallbackQuery($0) }
    dict[1417832080] = { return Api.Update.parse_updateBotInlineQuery($0) }
    dict[239663460] = { return Api.Update.parse_updateBotInlineSend($0) }
    dict[634833351] = { return Api.Update.parse_updateReadChannelOutbox($0) }
    dict[-299124375] = { return Api.Update.parse_updateDraftMessage($0) }
    dict[367766557] = { return Api.ChannelParticipant.parse_channelParticipant($0) }
    dict[-1557620115] = { return Api.ChannelParticipant.parse_channelParticipantSelf($0) }
    dict[-1861910545] = { return Api.ChannelParticipant.parse_channelParticipantModerator($0) }
    dict[-1743180447] = { return Api.ChannelParticipant.parse_channelParticipantEditor($0) }
    dict[-1933187430] = { return Api.ChannelParticipant.parse_channelParticipantKicked($0) }
    dict[-471670279] = { return Api.ChannelParticipant.parse_channelParticipantCreator($0) }
    dict[471043349] = { return Api.contacts.Blocked.parse_blocked($0) }
    dict[-1878523231] = { return Api.contacts.Blocked.parse_blockedSlice($0) }
    dict[-994444869] = { return Api.Error.parse_error($0) }
    dict[1504640087] = { return Api.Error.parse_richError($0) }
    dict[-515593041] = { return Api.ContactLocated.parse_contactLocated($0) }
    dict[-1054510761] = { return Api.ContactLocated.parse_contactLocatedPreview($0) }
    dict[-1560655744] = { return Api.KeyboardButton.parse_keyboardButton($0) }
    dict[629866245] = { return Api.KeyboardButton.parse_keyboardButtonUrl($0) }
    dict[1748655686] = { return Api.KeyboardButton.parse_keyboardButtonCallback($0) }
    dict[-1318425559] = { return Api.KeyboardButton.parse_keyboardButtonRequestPhone($0) }
    dict[-59151553] = { return Api.KeyboardButton.parse_keyboardButtonRequestGeoLocation($0) }
    dict[-367298028] = { return Api.KeyboardButton.parse_keyboardButtonSwitchInline($0) }
    dict[-748155807] = { return Api.ContactStatus.parse_contactStatus($0) }
    dict[236446268] = { return Api.PhotoSize.parse_photoSizeEmpty($0) }
    dict[2009052699] = { return Api.PhotoSize.parse_photoSize($0) }
    dict[-374917894] = { return Api.PhotoSize.parse_photoCachedSize($0) }
    dict[-244016606] = { return Api.messages.Stickers.parse_stickersNotModified($0) }
    dict[-1970352846] = { return Api.messages.Stickers.parse_stickers($0) }
    dict[1089848634] = { return Api.GlobalPrivacySettings.parse_globalPrivacySettings($0) }
    dict[1008755359] = { return Api.InlineBotSwitchPM.parse_inlineBotSwitchPM($0) }
    dict[1158290442] = { return Api.messages.FoundGifs.parse_foundGifs($0) }
    dict[2086234950] = { return Api.FileLocation.parse_fileLocationUnavailable($0) }
    dict[1406570614] = { return Api.FileLocation.parse_fileLocation($0) }
    dict[-1195615476] = { return Api.InputNotifyPeer.parse_inputNotifyPeer($0) }
    dict[423314455] = { return Api.InputNotifyPeer.parse_inputNotifyUsers($0) }
    dict[1251338318] = { return Api.InputNotifyPeer.parse_inputNotifyChats($0) }
    dict[-1540769658] = { return Api.InputNotifyPeer.parse_inputNotifyAll($0) }
    dict[-317144808] = { return Api.EncryptedMessage.parse_encryptedMessage($0) }
    dict[594758406] = { return Api.EncryptedMessage.parse_encryptedMessageService($0) }
    dict[-566281095] = { return Api.ChannelParticipantsFilter.parse_channelParticipantsRecent($0) }
    dict[-1268741783] = { return Api.ChannelParticipantsFilter.parse_channelParticipantsAdmins($0) }
    dict[1010285434] = { return Api.ChannelParticipantsFilter.parse_channelParticipantsKicked($0) }
    dict[-1328445861] = { return Api.ChannelParticipantsFilter.parse_channelParticipantsBots($0) }
    dict[-350980120] = { return Api.WebPage.parse_webPageEmpty($0) }
    dict[-981018084] = { return Api.WebPage.parse_webPagePending($0) }
    dict[-897446185] = { return Api.WebPage.parse_webPage($0) }
    dict[691006739] = { return Api.InputBotInlineMessage.parse_inputBotInlineMessageMediaAuto($0) }
    dict[1036876423] = { return Api.InputBotInlineMessage.parse_inputBotInlineMessageText($0) }
    dict[-190472735] = { return Api.InputBotInlineMessage.parse_inputBotInlineMessageMediaGeo($0) }
    dict[-1431327288] = { return Api.InputBotInlineMessage.parse_inputBotInlineMessageMediaVenue($0) }
    dict[766443943] = { return Api.InputBotInlineMessage.parse_inputBotInlineMessageMediaContact($0) }
    dict[2002815875] = { return Api.KeyboardButtonRow.parse_keyboardButtonRow($0) }
    dict[-852477119] = { return Api.StickerSet.parse_stickerSet($0) }
    dict[539045032] = { return Api.photos.Photo.parse_photo($0) }
    dict[-208488460] = { return Api.InputContact.parse_inputPhoneContact($0) }
    dict[-1419371685] = { return Api.TopPeerCategory.parse_topPeerCategoryBotsPM($0) }
    dict[344356834] = { return Api.TopPeerCategory.parse_topPeerCategoryBotsInline($0) }
    dict[104314861] = { return Api.TopPeerCategory.parse_topPeerCategoryCorrespondents($0) }
    dict[-1122524854] = { return Api.TopPeerCategory.parse_topPeerCategoryGroups($0) }
    dict[371037736] = { return Api.TopPeerCategory.parse_topPeerCategoryChannels($0) }
    dict[1871416498] = { return Api.contacts.Contacts.parse_contacts($0) }
    dict[-1219778094] = { return Api.contacts.Contacts.parse_contactsNotModified($0) }
    dict[-1798033689] = { return Api.ChannelMessagesFilter.parse_channelMessagesFilterEmpty($0) }
    dict[-847783593] = { return Api.ChannelMessagesFilter.parse_channelMessagesFilter($0) }
    dict[-100588754] = { return Api.ChannelMessagesFilter.parse_channelMessagesFilterCollapsed($0) }
    dict[326715557] = { return Api.auth.PasswordRecovery.parse_passwordRecovery($0) }
    dict[627509670] = { return Api.messages.BotResults.parse_botResults($0) }
    dict[1928391342] = { return Api.InputDocument.parse_inputDocumentEmpty($0) }
    dict[410618194] = { return Api.InputDocument.parse_inputDocument($0) }
    dict[2131196633] = { return Api.contacts.ResolvedPeer.parse_resolvedPeer($0) }
    dict[-1771768449] = { return Api.InputMedia.parse_inputMediaEmpty($0) }
    dict[-104578748] = { return Api.InputMedia.parse_inputMediaGeoPoint($0) }
    dict[-1494984313] = { return Api.InputMedia.parse_inputMediaContact($0) }
    dict[-139464256] = { return Api.InputMedia.parse_inputMediaUploadedPhoto($0) }
    dict[-373312269] = { return Api.InputMedia.parse_inputMediaPhoto($0) }
    dict[673687578] = { return Api.InputMedia.parse_inputMediaVenue($0) }
    dict[1212395773] = { return Api.InputMedia.parse_inputMediaGifExternal($0) }
    dict[495530093] = { return Api.InputMedia.parse_inputMediaUploadedDocument($0) }
    dict[-1386138479] = { return Api.InputMedia.parse_inputMediaUploadedThumbDocument($0) }
    dict[444068508] = { return Api.InputMedia.parse_inputMediaDocument($0) }
    dict[2134579434] = { return Api.InputPeer.parse_inputPeerEmpty($0) }
    dict[2107670217] = { return Api.InputPeer.parse_inputPeerSelf($0) }
    dict[396093539] = { return Api.InputPeer.parse_inputPeerChat($0) }
    dict[2072935910] = { return Api.InputPeer.parse_inputPeerUser($0) }
    dict[548253432] = { return Api.InputPeer.parse_inputPeerChannel($0) }
    dict[-116274796] = { return Api.Contact.parse_contact($0) }
    dict[-1679053127] = { return Api.BotInlineResult.parse_botInlineResult($0) }
    dict[400266251] = { return Api.BotInlineResult.parse_botInlineMediaResult($0) }
    dict[308605382] = { return Api.messages.BotCallbackAnswer.parse_botCallbackAnswer($0) }
    dict[1694474197] = { return Api.messages.Chats.parse_chats($0) }
    dict[-768992160] = { return Api.contacts.MyLink.parse_myLinkEmpty($0) }
    dict[1818882030] = { return Api.contacts.MyLink.parse_myLinkRequested($0) }
    dict[-1035932711] = { return Api.contacts.MyLink.parse_myLinkContact($0) }
    dict[218751099] = { return Api.InputPrivacyRule.parse_inputPrivacyValueAllowContacts($0) }
    dict[407582158] = { return Api.InputPrivacyRule.parse_inputPrivacyValueAllowAll($0) }
    dict[320652927] = { return Api.InputPrivacyRule.parse_inputPrivacyValueAllowUsers($0) }
    dict[195371015] = { return Api.InputPrivacyRule.parse_inputPrivacyValueDisallowContacts($0) }
    dict[-697604407] = { return Api.InputPrivacyRule.parse_inputPrivacyValueDisallowAll($0) }
    dict[-1877932953] = { return Api.InputPrivacyRule.parse_inputPrivacyValueDisallowUsers($0) }
    dict[-1058912715] = { return Api.messages.DhConfig.parse_dhConfigNotModified($0) }
    dict[740433629] = { return Api.messages.DhConfig.parse_dhConfig($0) }
    dict[-543777747] = { return Api.auth.ExportedAuthorization.parse_exportedAuthorization($0) }
    dict[1509048852] = { return Api.ContactRequest.parse_contactRequest($0) }
    dict[-1269012015] = { return Api.messages.AffectedHistory.parse_affectedHistory($0) }
    dict[-2037289493] = { return Api.account.PasswordInputSettings.parse_passwordInputSettings($0) }
    dict[649453030] = { return Api.messages.MessageEditData.parse_messageEditData($0) }
    dict[-438840932] = { return Api.messages.ChatFull.parse_chatFull($0) }
    dict[322183672] = { return Api.contacts.ForeignLink.parse_foreignLinkUnknown($0) }
    dict[-1484775609] = { return Api.contacts.ForeignLink.parse_foreignLinkRequested($0) }
    dict[468356321] = { return Api.contacts.ForeignLink.parse_foreignLinkMutual($0) }
    dict[-247351839] = { return Api.InputEncryptedChat.parse_inputEncryptedChat($0) }
    dict[-1169445179] = { return Api.DraftMessage.parse_draftMessageEmpty($0) }
    dict[-40996577] = { return Api.DraftMessage.parse_draftMessage($0) }
    dict[-1369215196] = { return Api.DisabledFeature.parse_disabledFeature($0) }
    dict[-1038136962] = { return Api.EncryptedFile.parse_encryptedFileEmpty($0) }
    dict[1248893260] = { return Api.EncryptedFile.parse_encryptedFile($0) }
    dict[-1613493288] = { return Api.NotifyPeer.parse_notifyPeer($0) }
    dict[-1261946036] = { return Api.NotifyPeer.parse_notifyUsers($0) }
    dict[-1073230141] = { return Api.NotifyPeer.parse_notifyChats($0) }
    dict[1959820384] = { return Api.NotifyPeer.parse_notifyAll($0) }
    dict[1335282456] = { return Api.InputPrivacyKey.parse_inputPrivacyKeyStatusTimestamp($0) }
    dict[-1107622874] = { return Api.InputPrivacyKey.parse_inputPrivacyKeyChatInvite($0) }
    dict[-1606526075] = { return Api.ReplyMarkup.parse_replyKeyboardHide($0) }
    dict[-200242528] = { return Api.ReplyMarkup.parse_replyKeyboardForceReply($0) }
    dict[889353612] = { return Api.ReplyMarkup.parse_replyKeyboardMarkup($0) }
    dict[1218642516] = { return Api.ReplyMarkup.parse_replyInlineMarkup($0) }
    dict[-305282981] = { return Api.TopPeer.parse_topPeer($0) }
    dict[986597452] = { return Api.contacts.Link.parse_link($0) }
    dict[1444661369] = { return Api.ContactBlocked.parse_contactBlocked($0) }
    dict[-2128698738] = { return Api.auth.CheckedPhone.parse_checkedPhone($0) }
    dict[-1182234929] = { return Api.InputUser.parse_inputUserEmpty($0) }
    dict[-138301121] = { return Api.InputUser.parse_inputUserSelf($0) }
    dict[-668391402] = { return Api.InputUser.parse_inputUser($0) }
    dict[-1461589623] = { return Api.SchemeType.parse_schemeType($0) }
    dict[157948117] = { return Api.upload.File.parse_file($0) }
    dict[182649427] = { return Api.MessageRange.parse_messageRange($0) }
    dict[-918482040] = { return Api.Config.parse_config($0) }
    dict[-75283823] = { return Api.TopPeerCategoryPeers.parse_topPeerCategoryPeers($0) }
    dict[-1032140601] = { return Api.BotCommand.parse_botCommand($0) }
    dict[-1428687705] = { return Api.contacts.Located.parse_located($0) }
    dict[-2066640507] = { return Api.messages.AffectedMessages.parse_affectedMessages($0) }
    dict[-402498398] = { return Api.messages.SavedGifs.parse_savedGifsNotModified($0) }
    dict[772213157] = { return Api.messages.SavedGifs.parse_savedGifs($0) }
    dict[563410286] = { return Api.ResponseIndirect.parse_responseIndirect($0) }
    dict[-860866985] = { return Api.WallPaper.parse_wallPaper($0) }
    dict[1662091044] = { return Api.WallPaper.parse_wallPaperSolid($0) }
    dict[-1938715001] = { return Api.messages.Messages.parse_messages($0) }
    dict[189033187] = { return Api.messages.Messages.parse_messagesSlice($0) }
    dict[-1725551049] = { return Api.messages.Messages.parse_channelMessages($0) }
    dict[1022718586] = { return Api.auth.SentCode.parse_sentCodePreview($0) }
    dict[438181806] = { return Api.auth.SentCode.parse_sentPassPhrase($0) }
    dict[1577067778] = { return Api.auth.SentCode.parse_sentCode($0) }
    dict[-1973582498] = { return Api.phone.DhConfig.parse_dhConfig($0) }
    dict[480546647] = { return Api.InputChatPhoto.parse_inputChatPhotoEmpty($0) }
    dict[-1809496270] = { return Api.InputChatPhoto.parse_inputChatUploadedPhoto($0) }
    dict[-1293828344] = { return Api.InputChatPhoto.parse_inputChatPhoto($0) }
    dict[-484987010] = { return Api.Updates.parse_updatesTooLong($0) }
    dict[2027216577] = { return Api.Updates.parse_updateShort($0) }
    dict[1918567619] = { return Api.Updates.parse_updatesCombined($0) }
    dict[1957577280] = { return Api.Updates.parse_updates($0) }
    dict[-1857044719] = { return Api.Updates.parse_updateShortMessage($0) }
    dict[377562760] = { return Api.Updates.parse_updateShortChatMessage($0) }
    dict[301019932] = { return Api.Updates.parse_updateShortSentMessage($0) }
    dict[1769565673] = { return Api.InitConnection.parse_initConnection($0) }
    dict[1038967584] = { return Api.MessageMedia.parse_messageMediaEmpty($0) }
    dict[1457575028] = { return Api.MessageMedia.parse_messageMediaGeo($0) }
    dict[1585262393] = { return Api.MessageMedia.parse_messageMediaContact($0) }
    dict[-1618676578] = { return Api.MessageMedia.parse_messageMediaUnsupported($0) }
    dict[-1557277184] = { return Api.MessageMedia.parse_messageMediaWebPage($0) }
    dict[1032643901] = { return Api.MessageMedia.parse_messageMediaPhoto($0) }
    dict[2031269663] = { return Api.MessageMedia.parse_messageMediaVenue($0) }
    dict[-203411800] = { return Api.MessageMedia.parse_messageMediaDocument($0) }
    dict[1450380236] = { return Api.Null.parse_null($0) }
    dict[1923290508] = { return Api.auth.CodeType.parse_codeTypeSms($0) }
    dict[1948046307] = { return Api.auth.CodeType.parse_codeTypeCall($0) }
    dict[577556219] = { return Api.auth.CodeType.parse_codeTypeFlashCall($0) }
    dict[1815593308] = { return Api.DocumentAttribute.parse_documentAttributeImageSize($0) }
    dict[297109817] = { return Api.DocumentAttribute.parse_documentAttributeAnimated($0) }
    dict[1494273227] = { return Api.DocumentAttribute.parse_documentAttributeVideo($0) }
    dict[358154344] = { return Api.DocumentAttribute.parse_documentAttributeFilename($0) }
    dict[978674434] = { return Api.DocumentAttribute.parse_documentAttributeSticker($0) }
    dict[-1739392570] = { return Api.DocumentAttribute.parse_documentAttributeAudio($0) }
    dict[307276766] = { return Api.account.Authorizations.parse_authorizations($0) }
    dict[935395612] = { return Api.ChatPhoto.parse_chatPhotoEmpty($0) }
    dict[1632839530] = { return Api.ChatPhoto.parse_chatPhoto($0) }
    dict[863093588] = { return Api.messages.PeerDialogs.parse_peerDialogs($0) }
    dict[-4838507] = { return Api.InputStickerSet.parse_inputStickerSetEmpty($0) }
    dict[-1645763991] = { return Api.InputStickerSet.parse_inputStickerSetID($0) }
    dict[-2044933984] = { return Api.InputStickerSet.parse_inputStickerSetShortName($0) }
    dict[-1729618630] = { return Api.BotInfo.parse_botInfo($0) }
    dict[1447681221] = { return Api.contacts.Suggested.parse_suggested($0) }
    dict[-1519637954] = { return Api.updates.State.parse_state($0) }
    dict[372165663] = { return Api.FoundGif.parse_foundGif($0) }
    dict[-1670052855] = { return Api.FoundGif.parse_foundGifCached($0) }
    dict[537022650] = { return Api.User.parse_userEmpty($0) }
    dict[-787638374] = { return Api.User.parse_user($0) }
    dict[-2082087340] = { return Api.Message.parse_messageEmpty($0) }
    dict[-1063525281] = { return Api.Message.parse_message($0) }
    dict[-1642487306] = { return Api.Message.parse_messageService($0) }
    dict[342061462] = { return Api.InputFileLocation.parse_inputFileLocation($0) }
    dict[-182231723] = { return Api.InputFileLocation.parse_inputEncryptedFileLocation($0) }
    dict[1313188841] = { return Api.InputFileLocation.parse_inputDocumentFileLocation($0) }
    dict[286776671] = { return Api.GeoPoint.parse_geoPointEmpty($0) }
    dict[541710092] = { return Api.GeoPoint.parse_geoPoint($0) }
    dict[1855857098] = { return Api.GeoPoint.parse_geoPlace($0) }
    dict[506920429] = { return Api.InputPhoneCall.parse_inputPhoneCall($0) }
    dict[-1551583367] = { return Api.ReceivedNotifyMessage.parse_receivedNotifyMessage($0) }
    dict[-57668565] = { return Api.ChatParticipants.parse_chatParticipantsForbidden($0) }
    dict[1061556205] = { return Api.ChatParticipants.parse_chatParticipants($0) }
    dict[-1910892683] = { return Api.NearestDc.parse_nearestDc($0) }
    dict[-1916114267] = { return Api.photos.Photos.parse_photos($0) }
    dict[352657236] = { return Api.photos.Photos.parse_photosSlice($0) }
    dict[-1387117803] = { return Api.contacts.ImportedContacts.parse_importedContacts($0) }
    dict[-1132882121] = { return Api.Bool.parse_boolFalse($0) }
    dict[-1720552011] = { return Api.Bool.parse_boolTrue($0) }
    dict[-947462709] = { return Api.MessageFwdHeader.parse_messageFwdHeader($0) }
    dict[398898678] = { return Api.help.Support.parse_support($0) }
    dict[909233996] = { return Api.ChatLocated.parse_chatLocated($0) }
    dict[1474492012] = { return Api.MessagesFilter.parse_inputMessagesFilterEmpty($0) }
    dict[-1777752804] = { return Api.MessagesFilter.parse_inputMessagesFilterPhotos($0) }
    dict[-1614803355] = { return Api.MessagesFilter.parse_inputMessagesFilterVideo($0) }
    dict[1458172132] = { return Api.MessagesFilter.parse_inputMessagesFilterPhotoVideo($0) }
    dict[-1629621880] = { return Api.MessagesFilter.parse_inputMessagesFilterDocument($0) }
    dict[-648121413] = { return Api.MessagesFilter.parse_inputMessagesFilterPhotoVideoDocuments($0) }
    dict[1358283666] = { return Api.MessagesFilter.parse_inputMessagesFilterVoice($0) }
    dict[928101534] = { return Api.MessagesFilter.parse_inputMessagesFilterMusic($0) }
    dict[975236280] = { return Api.MessagesFilter.parse_inputMessagesFilterChatPhotos($0) }
    dict[364538944] = { return Api.messages.Dialogs.parse_dialogs($0) }
    dict[1910543603] = { return Api.messages.Dialogs.parse_dialogsSlice($0) }
    dict[415997816] = { return Api.help.InviteText.parse_inviteText($0) }
    dict[1038193057] = { return Api.ContactSuggested.parse_contactSuggested($0) }
    dict[175419739] = { return Api.BotInlineMessage.parse_botInlineMessageMediaAuto($0) }
    dict[-1937807902] = { return Api.BotInlineMessage.parse_botInlineMessageText($0) }
    dict[982505656] = { return Api.BotInlineMessage.parse_botInlineMessageMediaGeo($0) }
    dict[1130767150] = { return Api.BotInlineMessage.parse_botInlineMessageMediaVenue($0) }
    dict[904770772] = { return Api.BotInlineMessage.parse_botInlineMessageMediaContact($0) }
    dict[949182130] = { return Api.InputPeerNotifySettings.parse_inputPeerNotifySettings($0) }
    dict[1776236393] = { return Api.ExportedChatInvite.parse_chatInviteEmpty($0) }
    dict[-64092740] = { return Api.ExportedChatInvite.parse_chatInviteExported($0) }
    dict[839114636] = { return Api.DcNetworkStats.parse_dcPingStats($0) }
    dict[2079516406] = { return Api.Authorization.parse_authorization($0) }
    dict[-395967805] = { return Api.messages.AllStickers.parse_allStickersNotModified($0) }
    dict[-302170017] = { return Api.messages.AllStickers.parse_allStickers($0) }
    dict[40616899] = { return Api.PhoneConnection.parse_phoneConnectionNotReady($0) }
    dict[981729898] = { return Api.PhoneConnection.parse_phoneConnection($0) }
    dict[-1194283041] = { return Api.AccountDaysTTL.parse_accountDaysTTL($0) }
    dict[1315894878] = { return Api.Scheme.parse_scheme($0) }
    dict[641506392] = { return Api.Scheme.parse_schemeNotModified($0) }
    dict[-1764049896] = { return Api.account.Password.parse_noPassword($0) }
    dict[2081952796] = { return Api.account.Password.parse_password($0) }
    dict[750510426] = { return Api.InputBotInlineResult.parse_inputBotInlineResult($0) }
    dict[-1462213465] = { return Api.InputBotInlineResult.parse_inputBotInlineResultPhoto($0) }
    dict[-459324] = { return Api.InputBotInlineResult.parse_inputBotInlineResultDocument($0) }
    dict[1430961007] = { return Api.account.PrivacyRules.parse_privacyRules($0) }
    dict[1062078024] = { return Api.messages.Message.parse_messageEmpty($0) }
    dict[-7289833] = { return Api.messages.Message.parse_message($0) }
    dict[-123988] = { return Api.PrivacyRule.parse_privacyValueAllowContacts($0) }
    dict[1698855810] = { return Api.PrivacyRule.parse_privacyValueAllowAll($0) }
    dict[1297858060] = { return Api.PrivacyRule.parse_privacyValueAllowUsers($0) }
    dict[-125240806] = { return Api.PrivacyRule.parse_privacyValueDisallowContacts($0) }
    dict[-1955338397] = { return Api.PrivacyRule.parse_privacyValueDisallowAll($0) }
    dict[209668535] = { return Api.PrivacyRule.parse_privacyValueDisallowUsers($0) }
    dict[-1230047312] = { return Api.MessageAction.parse_messageActionEmpty($0) }
    dict[-1503425638] = { return Api.MessageAction.parse_messageActionChatCreate($0) }
    dict[-1247687078] = { return Api.MessageAction.parse_messageActionChatEditTitle($0) }
    dict[2144015272] = { return Api.MessageAction.parse_messageActionChatEditPhoto($0) }
    dict[-1780220945] = { return Api.MessageAction.parse_messageActionChatDeletePhoto($0) }
    dict[-1297179892] = { return Api.MessageAction.parse_messageActionChatDeleteUser($0) }
    dict[-123931160] = { return Api.MessageAction.parse_messageActionChatJoinedByLink($0) }
    dict[-1781355374] = { return Api.MessageAction.parse_messageActionChannelCreate($0) }
    dict[1371385889] = { return Api.MessageAction.parse_messageActionChatMigrateTo($0) }
    dict[-1336546578] = { return Api.MessageAction.parse_messageActionChannelMigrateFrom($0) }
    dict[1217033015] = { return Api.MessageAction.parse_messageActionChatAddUser($0) }
    dict[-1799538451] = { return Api.MessageAction.parse_messageActionPinMessage($0) }
    dict[-1615153660] = { return Api.MessageAction.parse_messageActionHistoryClear($0) }
    dict[1399245077] = { return Api.PhoneCall.parse_phoneCallEmpty($0) }
    dict[247970787] = { return Api.PhoneCall.parse_phoneCall($0) }
    dict[-1378534221] = { return Api.PeerNotifyEvents.parse_peerNotifyEventsEmpty($0) }
    dict[1830677896] = { return Api.PeerNotifyEvents.parse_peerNotifyEventsAll($0) }
    dict[1599050311] = { return Api.ContactLink.parse_contactLinkUnknown($0) }
    dict[-17968211] = { return Api.ContactLink.parse_contactLinkNone($0) }
    dict[646922073] = { return Api.ContactLink.parse_contactLinkHasPhone($0) }
    dict[-721239344] = { return Api.ContactLink.parse_contactLinkContact($0) }
    dict[1112507924] = { return Api.help.AppPrefs.parse_appPrefs($0) }
    dict[446822276] = { return Api.contacts.Found.parse_found($0) }
    dict[1889961234] = { return Api.PeerNotifySettings.parse_peerNotifySettingsEmpty($0) }
    dict[-1697798976] = { return Api.PeerNotifySettings.parse_peerNotifySettings($0) }
    dict[-1995686519] = { return Api.InputBotInlineMessageID.parse_inputBotInlineMessageID($0) }
    dict[565550063] = { return Api.SchemeParam.parse_schemeParam($0) }
    dict[313694676] = { return Api.StickerPack.parse_stickerPack($0) }
    dict[1326562017] = { return Api.UserProfilePhoto.parse_userProfilePhotoEmpty($0) }
    dict[-715532088] = { return Api.UserProfilePhoto.parse_userProfilePhoto($0) }
    dict[1041346555] = { return Api.updates.ChannelDifference.parse_channelDifferenceEmpty($0) }
    dict[543450958] = { return Api.updates.ChannelDifference.parse_channelDifference($0) }
    dict[1091431943] = { return Api.updates.ChannelDifference.parse_channelDifferenceTooLong($0) }
    dict[-1148011883] = { return Api.MessageEntity.parse_messageEntityUnknown($0) }
    dict[-100378723] = { return Api.MessageEntity.parse_messageEntityMention($0) }
    dict[1868782349] = { return Api.MessageEntity.parse_messageEntityHashtag($0) }
    dict[1827637959] = { return Api.MessageEntity.parse_messageEntityBotCommand($0) }
    dict[1859134776] = { return Api.MessageEntity.parse_messageEntityUrl($0) }
    dict[1692693954] = { return Api.MessageEntity.parse_messageEntityEmail($0) }
    dict[-1117713463] = { return Api.MessageEntity.parse_messageEntityBold($0) }
    dict[-2106619040] = { return Api.MessageEntity.parse_messageEntityItalic($0) }
    dict[681706865] = { return Api.MessageEntity.parse_messageEntityCode($0) }
    dict[1938967520] = { return Api.MessageEntity.parse_messageEntityPre($0) }
    dict[1990644519] = { return Api.MessageEntity.parse_messageEntityTextUrl($0) }
    dict[892193368] = { return Api.MessageEntity.parse_messageEntityMentionName($0) }
    dict[546203849] = { return Api.MessageEntity.parse_inputMessageEntityMentionName($0) }
    dict[483901197] = { return Api.InputPhoto.parse_inputPhotoEmpty($0) }
    dict[-74070332] = { return Api.InputPhoto.parse_inputPhoto($0) }
    dict[-567906571] = { return Api.contacts.TopPeers.parse_topPeersNotModified($0) }
    dict[1891070632] = { return Api.contacts.TopPeers.parse_topPeers($0) }
    dict[1035688326] = { return Api.auth.SentCodeType.parse_sentCodeTypeApp($0) }
    dict[-1073693790] = { return Api.auth.SentCodeType.parse_sentCodeTypeSms($0) }
    dict[1398007207] = { return Api.auth.SentCodeType.parse_sentCodeTypeCall($0) }
    dict[-1425815847] = { return Api.auth.SentCodeType.parse_sentCodeTypeFlashCall($0) }
    dict[-1417756512] = { return Api.EncryptedChat.parse_encryptedChatEmpty($0) }
    dict[1006044124] = { return Api.EncryptedChat.parse_encryptedChatWaiting($0) }
    dict[332848423] = { return Api.EncryptedChat.parse_encryptedChatDiscarded($0) }
    dict[-931638658] = { return Api.EncryptedChat.parse_encryptedChatRequested($0) }
    dict[-94974410] = { return Api.EncryptedChat.parse_encryptedChat($0) }
    dict[922273905] = { return Api.Document.parse_documentEmpty($0) }
    dict[-106717361] = { return Api.Document.parse_document($0) }
    dict[-805141448] = { return Api.ImportedContact.parse_importedContact($0) }
    return dict
}()

public struct Api {
    public static func parse(_ buffer: Buffer) -> Any? {
        let reader = BufferReader(buffer)
        if let signature = reader.readInt32() {
            return parse(reader, signature: signature)
        }
        return nil
    }
    
        private static func parse(_ reader: BufferReader, signature: Int32) -> Any? {
            if let parser = parsers[signature] {
                return parser(reader)
            }
            else {
                print("Type constructor \(String(signature, radix: 16, uppercase: false)) not found")
                return nil
            }
        }
        
        private static func parseVector<T>(_ reader: BufferReader, elementSignature: Int32, elementType: T.Type) -> [T]? {
        if let count = reader.readInt32() {
            var array = [T]()
            var i: Int32 = 0
            while i < count {
                var signature = elementSignature
                if elementSignature == 0 {
                    if let unboxedSignature = reader.readInt32() {
                        signature = unboxedSignature
                    }
                    else {
                        return nil
                    }
                }
                if let item = Api.parse(reader, signature: signature) as? T {
                    array.append(item)
                }
                else {
                    return nil
                }
                i += 1
            }
            return array
        }
        return nil
    }
    
    public static func serializeObject(_ object: Any, buffer: Buffer, boxed: Swift.Bool) -> Swift.Bool {
        switch object {
            case let _1 as Api.messages.StickerSet:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputGeoPlaceName:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputGeoPoint:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.Chat:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChatFull:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChatParticipant:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.updates.Difference:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.SchemeMethod:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPhotoCrop:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Photo:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Chat:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChatInvite:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Requests:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.channels.ChannelParticipants:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.GeoPlaceName:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.UserFull:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPeerNotifyEvents:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputChannel:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.DcOption:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessageGroup:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.account.PasswordSettings:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.help.AppUpdate:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.channels.ChannelParticipant:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.SentLink:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChannelParticipantRole:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.storage.FileType:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputEncryptedFile:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.SentEncryptedMessage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ExportedMessageLink:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.Authorization:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputFile:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Peer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.UserStatus:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Dialog:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.help.AppChangelog:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.SendMessageAction:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PrivacyKey:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Update:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChannelParticipant:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Blocked:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Error:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ContactLocated:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.KeyboardButton:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ContactStatus:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PhotoSize:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.Stickers:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.GlobalPrivacySettings:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InlineBotSwitchPM:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.FoundGifs:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.FileLocation:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputNotifyPeer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.EncryptedMessage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChannelParticipantsFilter:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.WebPage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputBotInlineMessage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.KeyboardButtonRow:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.StickerSet:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.photos.Photo:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputContact:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.TopPeerCategory:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Contacts:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChannelMessagesFilter:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.PasswordRecovery:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.BotResults:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputDocument:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.ResolvedPeer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputMedia:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPeer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Contact:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.BotInlineResult:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.BotCallbackAnswer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.Chats:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.MyLink:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPrivacyRule:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.DhConfig:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.ExportedAuthorization:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ContactRequest:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.AffectedHistory:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.account.PasswordInputSettings:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.MessageEditData:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.ChatFull:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.ForeignLink:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputEncryptedChat:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.DraftMessage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.DisabledFeature:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.EncryptedFile:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.NotifyPeer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPrivacyKey:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ReplyMarkup:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.TopPeer:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Link:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ContactBlocked:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.CheckedPhone:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputUser:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.SchemeType:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.upload.File:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessageRange:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Config:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.TopPeerCategoryPeers:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.BotCommand:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Located:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.AffectedMessages:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.SavedGifs:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ResponseIndirect:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.WallPaper:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.Messages:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.SentCode:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.phone.DhConfig:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputChatPhoto:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Updates:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InitConnection:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessageMedia:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Null:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.CodeType:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.DocumentAttribute:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.account.Authorizations:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChatPhoto:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.PeerDialogs:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputStickerSet:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.BotInfo:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Suggested:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.updates.State:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.FoundGif:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.User:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Message:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputFileLocation:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.GeoPoint:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPhoneCall:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ReceivedNotifyMessage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChatParticipants:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.NearestDc:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.photos.Photos:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.ImportedContacts:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Bool:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessageFwdHeader:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.help.Support:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ChatLocated:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessagesFilter:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.Dialogs:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.help.InviteText:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ContactSuggested:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.BotInlineMessage:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPeerNotifySettings:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ExportedChatInvite:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.DcNetworkStats:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Authorization:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.AllStickers:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PhoneConnection:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.AccountDaysTTL:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Scheme:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.account.Password:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputBotInlineResult:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.account.PrivacyRules:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.messages.Message:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PrivacyRule:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessageAction:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PhoneCall:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PeerNotifyEvents:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ContactLink:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.help.AppPrefs:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.Found:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.PeerNotifySettings:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputBotInlineMessageID:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.SchemeParam:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.StickerPack:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.UserProfilePhoto:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.updates.ChannelDifference:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.MessageEntity:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.InputPhoto:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.contacts.TopPeers:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.auth.SentCodeType:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.EncryptedChat:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.Document:
                return _1.serialize(buffer, boxed)
            case let _1 as Api.ImportedContact:
                return _1.serialize(buffer, boxed)
            default:
                break
        }
        return false
    }

    public struct messages {
        public enum StickerSet: CustomStringConvertible {
            case stickerSet(set: Api.StickerSet, packs: [Api.StickerPack], documents: [Api.Document])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .stickerSet(let set, let packs, let documents):
                        if boxed {
                            buffer.appendInt32(-1240849242)
                        }
                        let _ = set.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(packs.count))
                        for item in packs {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(documents.count))
                        for item in documents {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_stickerSet(_ reader: BufferReader) -> StickerSet? {
                var _1: Api.StickerSet?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.StickerSet
                }
                var _2: [Api.StickerPack]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.StickerPack.self)
                }
                var _3: [Api.Document]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.messages.StickerSet.stickerSet(set: _1!, packs: _2!, documents: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .stickerSet(let set, let packs, let documents):
                            return "(messages.stickerSet set: \(set), packs: \(packs), documents: \(documents))"
                    }
                }
            }
        }
    
        public enum Chat: CustomStringConvertible {
            case chat(chat: Api.Chat, users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .chat(let chat, let users):
                        if boxed {
                            buffer.appendInt32(1089011754)
                        }
                        let _ = chat.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_chat(_ reader: BufferReader) -> Chat? {
                var _1: Api.Chat?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Chat
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.Chat.chat(chat: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .chat(let chat, let users):
                            return "(messages.chat chat: \(chat), users: \(users))"
                    }
                }
            }
        }
    
        public enum SentEncryptedMessage: CustomStringConvertible {
            case sentEncryptedMessage(date: Int32)
            case sentEncryptedFile(date: Int32, file: Api.EncryptedFile)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .sentEncryptedMessage(let date):
                        if boxed {
                            buffer.appendInt32(1443858741)
                        }
                        serializeInt32(date, buffer: buffer, boxed: false)
                        break
                    case .sentEncryptedFile(let date, let file):
                        if boxed {
                            buffer.appendInt32(-1802240206)
                        }
                        serializeInt32(date, buffer: buffer, boxed: false)
                        let _ = file.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_sentEncryptedMessage(_ reader: BufferReader) -> SentEncryptedMessage? {
                var _1: Int32?
                _1 = reader.readInt32()
                let _c1 = _1 != nil
                if _c1 {
                    return Api.messages.SentEncryptedMessage.sentEncryptedMessage(date: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_sentEncryptedFile(_ reader: BufferReader) -> SentEncryptedMessage? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Api.EncryptedFile?
                if let signature = reader.readInt32() {
                    _2 = Api.parse(reader, signature: signature) as? Api.EncryptedFile
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.SentEncryptedMessage.sentEncryptedFile(date: _1!, file: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .sentEncryptedMessage(let date):
                            return "(messages.sentEncryptedMessage date: \(date))"
                        case .sentEncryptedFile(let date, let file):
                            return "(messages.sentEncryptedFile date: \(date), file: \(file))"
                    }
                }
            }
        }
    
        public enum Stickers: CustomStringConvertible {
            case stickersNotModified
            case stickers(hash: String, stickers: [Api.Document])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .stickersNotModified:
                        if boxed {
                            buffer.appendInt32(-244016606)
                        }
                        
                        break
                    case .stickers(let hash, let stickers):
                        if boxed {
                            buffer.appendInt32(-1970352846)
                        }
                        serializeString(hash, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(stickers.count))
                        for item in stickers {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_stickersNotModified(_ reader: BufferReader) -> Stickers? {
                return Api.messages.Stickers.stickersNotModified
            }
            private static func parse_stickers(_ reader: BufferReader) -> Stickers? {
                var _1: String?
                _1 = parseString(reader)
                var _2: [Api.Document]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.Stickers.stickers(hash: _1!, stickers: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .stickersNotModified:
                            return "(messages.stickersNotModified)"
                        case .stickers(let hash, let stickers):
                            return "(messages.stickers hash: \(hash), stickers: \(stickers))"
                    }
                }
            }
        }
    
        public enum FoundGifs: CustomStringConvertible {
            case foundGifs(nextOffset: Int32, results: [Api.FoundGif])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .foundGifs(let nextOffset, let results):
                        if boxed {
                            buffer.appendInt32(1158290442)
                        }
                        serializeInt32(nextOffset, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(results.count))
                        for item in results {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_foundGifs(_ reader: BufferReader) -> FoundGifs? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.FoundGif]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.FoundGif.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.FoundGifs.foundGifs(nextOffset: _1!, results: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .foundGifs(let nextOffset, let results):
                            return "(messages.foundGifs nextOffset: \(nextOffset), results: \(results))"
                    }
                }
            }
        }
    
        public enum BotResults: CustomStringConvertible {
            case botResults(flags: Int32, queryId: Int64, nextOffset: String?, switchPm: Api.InlineBotSwitchPM?, results: [Api.BotInlineResult])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .botResults(let flags, let queryId, let nextOffset, let switchPm, let results):
                        if boxed {
                            buffer.appendInt32(627509670)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        serializeInt64(queryId, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 1) != 0 {serializeString(nextOffset!, buffer: buffer, boxed: false)}
                        if Int(flags) & Int(1 << 2) != 0 {let _ = switchPm!.serialize(buffer, true)}
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(results.count))
                        for item in results {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_botResults(_ reader: BufferReader) -> BotResults? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int64?
                _2 = reader.readInt64()
                var _3: String?
                if Int(_1!) & Int(1 << 1) != 0 {_3 = parseString(reader) }
                var _4: Api.InlineBotSwitchPM?
                if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                    _4 = Api.parse(reader, signature: signature) as? Api.InlineBotSwitchPM
                } }
                var _5: [Api.BotInlineResult]?
                if let _ = reader.readInt32() {
                    _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.BotInlineResult.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
                let _c4 = (Int(_1!) & Int(1 << 2) == 0) || _4 != nil
                let _c5 = _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.messages.BotResults.botResults(flags: _1!, queryId: _2!, nextOffset: _3, switchPm: _4, results: _5!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .botResults(let flags, let queryId, let nextOffset, let switchPm, let results):
                            return "(messages.botResults flags: \(flags), queryId: \(queryId), nextOffset: \(nextOffset), switchPm: \(switchPm), results: \(results))"
                    }
                }
            }
        }
    
        public enum BotCallbackAnswer: CustomStringConvertible {
            case botCallbackAnswer(flags: Int32, message: String?)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .botCallbackAnswer(let flags, let message):
                        if boxed {
                            buffer.appendInt32(308605382)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 0) != 0 {serializeString(message!, buffer: buffer, boxed: false)}
                        break
        }
        return true
        }
        
            private static func parse_botCallbackAnswer(_ reader: BufferReader) -> BotCallbackAnswer? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: String?
                if Int(_1!) & Int(1 << 0) != 0 {_2 = parseString(reader) }
                let _c1 = _1 != nil
                let _c2 = (Int(_1!) & Int(1 << 0) == 0) || _2 != nil
                if _c1 && _c2 {
                    return Api.messages.BotCallbackAnswer.botCallbackAnswer(flags: _1!, message: _2)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .botCallbackAnswer(let flags, let message):
                            return "(messages.botCallbackAnswer flags: \(flags), message: \(message))"
                    }
                }
            }
        }
    
        public enum Chats: CustomStringConvertible {
            case chats(chats: [Api.Chat])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .chats(let chats):
                        if boxed {
                            buffer.appendInt32(1694474197)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_chats(_ reader: BufferReader) -> Chats? {
                var _1: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.messages.Chats.chats(chats: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .chats(let chats):
                            return "(messages.chats chats: \(chats))"
                    }
                }
            }
        }
    
        public enum DhConfig: CustomStringConvertible {
            case dhConfigNotModified(random: Buffer)
            case dhConfig(g: Int32, p: Buffer, version: Int32, random: Buffer)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .dhConfigNotModified(let random):
                        if boxed {
                            buffer.appendInt32(-1058912715)
                        }
                        serializeBytes(random, buffer: buffer, boxed: false)
                        break
                    case .dhConfig(let g, let p, let version, let random):
                        if boxed {
                            buffer.appendInt32(740433629)
                        }
                        serializeInt32(g, buffer: buffer, boxed: false)
                        serializeBytes(p, buffer: buffer, boxed: false)
                        serializeInt32(version, buffer: buffer, boxed: false)
                        serializeBytes(random, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_dhConfigNotModified(_ reader: BufferReader) -> DhConfig? {
                var _1: Buffer?
                _1 = parseBytes(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.messages.DhConfig.dhConfigNotModified(random: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_dhConfig(_ reader: BufferReader) -> DhConfig? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Buffer?
                _2 = parseBytes(reader)
                var _3: Int32?
                _3 = reader.readInt32()
                var _4: Buffer?
                _4 = parseBytes(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                if _c1 && _c2 && _c3 && _c4 {
                    return Api.messages.DhConfig.dhConfig(g: _1!, p: _2!, version: _3!, random: _4!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .dhConfigNotModified(let random):
                            return "(messages.dhConfigNotModified random: \(random))"
                        case .dhConfig(let g, let p, let version, let random):
                            return "(messages.dhConfig g: \(g), p: \(p), version: \(version), random: \(random))"
                    }
                }
            }
        }
    
        public enum AffectedHistory: CustomStringConvertible {
            case affectedHistory(pts: Int32, ptsCount: Int32, offset: Int32)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .affectedHistory(let pts, let ptsCount, let offset):
                        if boxed {
                            buffer.appendInt32(-1269012015)
                        }
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        serializeInt32(ptsCount, buffer: buffer, boxed: false)
                        serializeInt32(offset, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_affectedHistory(_ reader: BufferReader) -> AffectedHistory? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Int32?
                _3 = reader.readInt32()
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.messages.AffectedHistory.affectedHistory(pts: _1!, ptsCount: _2!, offset: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .affectedHistory(let pts, let ptsCount, let offset):
                            return "(messages.affectedHistory pts: \(pts), ptsCount: \(ptsCount), offset: \(offset))"
                    }
                }
            }
        }
    
        public enum MessageEditData: CustomStringConvertible {
            case messageEditData(flags: Int32)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .messageEditData(let flags):
                        if boxed {
                            buffer.appendInt32(649453030)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_messageEditData(_ reader: BufferReader) -> MessageEditData? {
                var _1: Int32?
                _1 = reader.readInt32()
                let _c1 = _1 != nil
                if _c1 {
                    return Api.messages.MessageEditData.messageEditData(flags: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .messageEditData(let flags):
                            return "(messages.messageEditData flags: \(flags))"
                    }
                }
            }
        }
    
        public enum ChatFull: CustomStringConvertible {
            case chatFull(fullChat: Api.ChatFull, chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .chatFull(let fullChat, let chats, let users):
                        if boxed {
                            buffer.appendInt32(-438840932)
                        }
                        let _ = fullChat.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_chatFull(_ reader: BufferReader) -> ChatFull? {
                var _1: Api.ChatFull?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.ChatFull
                }
                var _2: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.messages.ChatFull.chatFull(fullChat: _1!, chats: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .chatFull(let fullChat, let chats, let users):
                            return "(messages.chatFull fullChat: \(fullChat), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    
        public enum AffectedMessages: CustomStringConvertible {
            case affectedMessages(pts: Int32, ptsCount: Int32)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .affectedMessages(let pts, let ptsCount):
                        if boxed {
                            buffer.appendInt32(-2066640507)
                        }
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        serializeInt32(ptsCount, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_affectedMessages(_ reader: BufferReader) -> AffectedMessages? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.AffectedMessages.affectedMessages(pts: _1!, ptsCount: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .affectedMessages(let pts, let ptsCount):
                            return "(messages.affectedMessages pts: \(pts), ptsCount: \(ptsCount))"
                    }
                }
            }
        }
    
        public enum SavedGifs: CustomStringConvertible {
            case savedGifsNotModified
            case savedGifs(hash: Int32, gifs: [Api.Document])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .savedGifsNotModified:
                        if boxed {
                            buffer.appendInt32(-402498398)
                        }
                        
                        break
                    case .savedGifs(let hash, let gifs):
                        if boxed {
                            buffer.appendInt32(772213157)
                        }
                        serializeInt32(hash, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(gifs.count))
                        for item in gifs {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_savedGifsNotModified(_ reader: BufferReader) -> SavedGifs? {
                return Api.messages.SavedGifs.savedGifsNotModified
            }
            private static func parse_savedGifs(_ reader: BufferReader) -> SavedGifs? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.Document]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.SavedGifs.savedGifs(hash: _1!, gifs: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .savedGifsNotModified:
                            return "(messages.savedGifsNotModified)"
                        case .savedGifs(let hash, let gifs):
                            return "(messages.savedGifs hash: \(hash), gifs: \(gifs))"
                    }
                }
            }
        }
    
        public enum Messages: CustomStringConvertible {
            case messages(messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
            case messagesSlice(count: Int32, messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
            case channelMessages(flags: Int32, pts: Int32, count: Int32, messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .messages(let messages, let chats, let users):
                        if boxed {
                            buffer.appendInt32(-1938715001)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .messagesSlice(let count, let messages, let chats, let users):
                        if boxed {
                            buffer.appendInt32(189033187)
                        }
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .channelMessages(let flags, let pts, let count, let messages, let chats, let users):
                        if boxed {
                            buffer.appendInt32(-1725551049)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_messages(_ reader: BufferReader) -> Messages? {
                var _1: [Api.Message]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _2: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.messages.Messages.messages(messages: _1!, chats: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
            private static func parse_messagesSlice(_ reader: BufferReader) -> Messages? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.Message]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _3: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _4: [Api.User]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                if _c1 && _c2 && _c3 && _c4 {
                    return Api.messages.Messages.messagesSlice(count: _1!, messages: _2!, chats: _3!, users: _4!)
                }
                else {
                    return nil
                }
            }
            private static func parse_channelMessages(_ reader: BufferReader) -> Messages? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Int32?
                _3 = reader.readInt32()
                var _4: [Api.Message]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _5: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _6: [Api.User]?
                if let _ = reader.readInt32() {
                    _6 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                let _c6 = _6 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                    return Api.messages.Messages.channelMessages(flags: _1!, pts: _2!, count: _3!, messages: _4!, chats: _5!, users: _6!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .messages(let messages, let chats, let users):
                            return "(messages.messages messages: \(messages), chats: \(chats), users: \(users))"
                        case .messagesSlice(let count, let messages, let chats, let users):
                            return "(messages.messagesSlice count: \(count), messages: \(messages), chats: \(chats), users: \(users))"
                        case .channelMessages(let flags, let pts, let count, let messages, let chats, let users):
                            return "(messages.channelMessages flags: \(flags), pts: \(pts), count: \(count), messages: \(messages), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    
        public enum PeerDialogs: CustomStringConvertible {
            case peerDialogs(dialogs: [Api.Dialog], messages: [Api.Message], chats: [Api.Chat], users: [Api.User], state: Api.updates.State)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .peerDialogs(let dialogs, let messages, let chats, let users, let state):
                        if boxed {
                            buffer.appendInt32(863093588)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(dialogs.count))
                        for item in dialogs {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        let _ = state.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_peerDialogs(_ reader: BufferReader) -> PeerDialogs? {
                var _1: [Api.Dialog]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Dialog.self)
                }
                var _2: [Api.Message]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _3: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _4: [Api.User]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                var _5: Api.updates.State?
                if let signature = reader.readInt32() {
                    _5 = Api.parse(reader, signature: signature) as? Api.updates.State
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.messages.PeerDialogs.peerDialogs(dialogs: _1!, messages: _2!, chats: _3!, users: _4!, state: _5!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .peerDialogs(let dialogs, let messages, let chats, let users, let state):
                            return "(messages.peerDialogs dialogs: \(dialogs), messages: \(messages), chats: \(chats), users: \(users), state: \(state))"
                    }
                }
            }
        }
    
        public enum Dialogs: CustomStringConvertible {
            case dialogs(dialogs: [Api.Dialog], messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
            case dialogsSlice(count: Int32, dialogs: [Api.Dialog], messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .dialogs(let dialogs, let messages, let chats, let users):
                        if boxed {
                            buffer.appendInt32(364538944)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(dialogs.count))
                        for item in dialogs {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .dialogsSlice(let count, let dialogs, let messages, let chats, let users):
                        if boxed {
                            buffer.appendInt32(1910543603)
                        }
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(dialogs.count))
                        for item in dialogs {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_dialogs(_ reader: BufferReader) -> Dialogs? {
                var _1: [Api.Dialog]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Dialog.self)
                }
                var _2: [Api.Message]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _3: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _4: [Api.User]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                if _c1 && _c2 && _c3 && _c4 {
                    return Api.messages.Dialogs.dialogs(dialogs: _1!, messages: _2!, chats: _3!, users: _4!)
                }
                else {
                    return nil
                }
            }
            private static func parse_dialogsSlice(_ reader: BufferReader) -> Dialogs? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.Dialog]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Dialog.self)
                }
                var _3: [Api.Message]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _4: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _5: [Api.User]?
                if let _ = reader.readInt32() {
                    _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.messages.Dialogs.dialogsSlice(count: _1!, dialogs: _2!, messages: _3!, chats: _4!, users: _5!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .dialogs(let dialogs, let messages, let chats, let users):
                            return "(messages.dialogs dialogs: \(dialogs), messages: \(messages), chats: \(chats), users: \(users))"
                        case .dialogsSlice(let count, let dialogs, let messages, let chats, let users):
                            return "(messages.dialogsSlice count: \(count), dialogs: \(dialogs), messages: \(messages), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    
        public enum AllStickers: CustomStringConvertible {
            case allStickersNotModified
            case allStickers(hash: Int32, sets: [Api.StickerSet])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .allStickersNotModified:
                        if boxed {
                            buffer.appendInt32(-395967805)
                        }
                        
                        break
                    case .allStickers(let hash, let sets):
                        if boxed {
                            buffer.appendInt32(-302170017)
                        }
                        serializeInt32(hash, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(sets.count))
                        for item in sets {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_allStickersNotModified(_ reader: BufferReader) -> AllStickers? {
                return Api.messages.AllStickers.allStickersNotModified
            }
            private static func parse_allStickers(_ reader: BufferReader) -> AllStickers? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.StickerSet]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.StickerSet.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.messages.AllStickers.allStickers(hash: _1!, sets: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .allStickersNotModified:
                            return "(messages.allStickersNotModified)"
                        case .allStickers(let hash, let sets):
                            return "(messages.allStickers hash: \(hash), sets: \(sets))"
                    }
                }
            }
        }
    
        public enum Message: CustomStringConvertible {
            case messageEmpty
            case message(message: Api.Message, chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .messageEmpty:
                        if boxed {
                            buffer.appendInt32(1062078024)
                        }
                        
                        break
                    case .message(let message, let chats, let users):
                        if boxed {
                            buffer.appendInt32(-7289833)
                        }
                        let _ = message.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_messageEmpty(_ reader: BufferReader) -> Message? {
                return Api.messages.Message.messageEmpty
            }
            private static func parse_message(_ reader: BufferReader) -> Message? {
                var _1: Api.Message?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Message
                }
                var _2: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.messages.Message.message(message: _1!, chats: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .messageEmpty:
                            return "(messages.messageEmpty)"
                        case .message(let message, let chats, let users):
                            return "(messages.message message: \(message), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    }

    public enum InputGeoPlaceName: CustomStringConvertible {
        case inputGeoPlaceName(country: String, state: String, city: String, district: String, street: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputGeoPlaceName(let country, let state, let city, let district, let street):
                    if boxed {
                        buffer.appendInt32(1756342228)
                    }
                    serializeString(country, buffer: buffer, boxed: false)
                    serializeString(state, buffer: buffer, boxed: false)
                    serializeString(city, buffer: buffer, boxed: false)
                    serializeString(district, buffer: buffer, boxed: false)
                    serializeString(street, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputGeoPlaceName(_ reader: BufferReader) -> InputGeoPlaceName? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputGeoPlaceName.inputGeoPlaceName(country: _1!, state: _2!, city: _3!, district: _4!, street: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputGeoPlaceName(let country, let state, let city, let district, let street):
                        return "(inputGeoPlaceName country: \(country), state: \(state), city: \(city), district: \(district), street: \(street))"
                }
            }
        }
    }

    public enum InputGeoPoint: CustomStringConvertible {
        case inputGeoPointEmpty
        case inputGeoPoint(lat: Double, long: Double)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputGeoPointEmpty:
                    if boxed {
                        buffer.appendInt32(-457104426)
                    }
                    
                    break
                case .inputGeoPoint(let lat, let long):
                    if boxed {
                        buffer.appendInt32(-206066487)
                    }
                    serializeDouble(lat, buffer: buffer, boxed: false)
                    serializeDouble(long, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputGeoPointEmpty(_ reader: BufferReader) -> InputGeoPoint? {
            return Api.InputGeoPoint.inputGeoPointEmpty
        }
        private static func parse_inputGeoPoint(_ reader: BufferReader) -> InputGeoPoint? {
            var _1: Double?
            _1 = reader.readDouble()
            var _2: Double?
            _2 = reader.readDouble()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputGeoPoint.inputGeoPoint(lat: _1!, long: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputGeoPointEmpty:
                        return "(inputGeoPointEmpty)"
                    case .inputGeoPoint(let lat, let long):
                        return "(inputGeoPoint lat: \(lat), long: \(long))"
                }
            }
        }
    }

    public enum ChatFull: CustomStringConvertible {
        case chatFull(id: Int32, participants: Api.ChatParticipants, chatPhoto: Api.Photo, notifySettings: Api.PeerNotifySettings, exportedInvite: Api.ExportedChatInvite, botInfo: [Api.BotInfo])
        case channelFull(flags: Int32, id: Int32, about: String, participantsCount: Int32?, adminsCount: Int32?, kickedCount: Int32?, readInboxMaxId: Int32, readOutboxMaxId: Int32, unreadCount: Int32, chatPhoto: Api.Photo, notifySettings: Api.PeerNotifySettings, exportedInvite: Api.ExportedChatInvite, botInfo: [Api.BotInfo], migratedFromChatId: Int32?, migratedFromMaxId: Int32?, pinnedMsgId: Int32?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatFull(let id, let participants, let chatPhoto, let notifySettings, let exportedInvite, let botInfo):
                    if boxed {
                        buffer.appendInt32(771925524)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    let _ = participants.serialize(buffer, true)
                    let _ = chatPhoto.serialize(buffer, true)
                    let _ = notifySettings.serialize(buffer, true)
                    let _ = exportedInvite.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(botInfo.count))
                    for item in botInfo {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .channelFull(let flags, let id, let about, let participantsCount, let adminsCount, let kickedCount, let readInboxMaxId, let readOutboxMaxId, let unreadCount, let chatPhoto, let notifySettings, let exportedInvite, let botInfo, let migratedFromChatId, let migratedFromMaxId, let pinnedMsgId):
                    if boxed {
                        buffer.appendInt32(-1009430225)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(about, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(participantsCount!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(adminsCount!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeInt32(kickedCount!, buffer: buffer, boxed: false)}
                    serializeInt32(readInboxMaxId, buffer: buffer, boxed: false)
                    serializeInt32(readOutboxMaxId, buffer: buffer, boxed: false)
                    serializeInt32(unreadCount, buffer: buffer, boxed: false)
                    let _ = chatPhoto.serialize(buffer, true)
                    let _ = notifySettings.serialize(buffer, true)
                    let _ = exportedInvite.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(botInfo.count))
                    for item in botInfo {
                        let _ = item.serialize(buffer, true)
                    }
                    if Int(flags) & Int(1 << 4) != 0 {serializeInt32(migratedFromChatId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 4) != 0 {serializeInt32(migratedFromMaxId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeInt32(pinnedMsgId!, buffer: buffer, boxed: false)}
                    break
    }
    return true
    }
    
        private static func parse_chatFull(_ reader: BufferReader) -> ChatFull? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.ChatParticipants?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.ChatParticipants
            }
            var _3: Api.Photo?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.Photo
            }
            var _4: Api.PeerNotifySettings?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.PeerNotifySettings
            }
            var _5: Api.ExportedChatInvite?
            if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.ExportedChatInvite
            }
            var _6: [Api.BotInfo]?
            if let _ = reader.readInt32() {
                _6 = Api.parseVector(reader, elementSignature: 0, elementType: Api.BotInfo.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.ChatFull.chatFull(id: _1!, participants: _2!, chatPhoto: _3!, notifySettings: _4!, exportedInvite: _5!, botInfo: _6!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelFull(_ reader: BufferReader) -> ChatFull? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_4 = reader.readInt32() }
            var _5: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_5 = reader.readInt32() }
            var _6: Int32?
            if Int(_1!) & Int(1 << 2) != 0 {_6 = reader.readInt32() }
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: Int32?
            _8 = reader.readInt32()
            var _9: Int32?
            _9 = reader.readInt32()
            var _10: Api.Photo?
            if let signature = reader.readInt32() {
                _10 = Api.parse(reader, signature: signature) as? Api.Photo
            }
            var _11: Api.PeerNotifySettings?
            if let signature = reader.readInt32() {
                _11 = Api.parse(reader, signature: signature) as? Api.PeerNotifySettings
            }
            var _12: Api.ExportedChatInvite?
            if let signature = reader.readInt32() {
                _12 = Api.parse(reader, signature: signature) as? Api.ExportedChatInvite
            }
            var _13: [Api.BotInfo]?
            if let _ = reader.readInt32() {
                _13 = Api.parseVector(reader, elementSignature: 0, elementType: Api.BotInfo.self)
            }
            var _14: Int32?
            if Int(_1!) & Int(1 << 4) != 0 {_14 = reader.readInt32() }
            var _15: Int32?
            if Int(_1!) & Int(1 << 4) != 0 {_15 = reader.readInt32() }
            var _16: Int32?
            if Int(_1!) & Int(1 << 5) != 0 {_16 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 0) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 1) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 2) == 0) || _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            let _c9 = _9 != nil
            let _c10 = _10 != nil
            let _c11 = _11 != nil
            let _c12 = _12 != nil
            let _c13 = _13 != nil
            let _c14 = (Int(_1!) & Int(1 << 4) == 0) || _14 != nil
            let _c15 = (Int(_1!) & Int(1 << 4) == 0) || _15 != nil
            let _c16 = (Int(_1!) & Int(1 << 5) == 0) || _16 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 && _c14 && _c15 && _c16 {
                return Api.ChatFull.channelFull(flags: _1!, id: _2!, about: _3!, participantsCount: _4, adminsCount: _5, kickedCount: _6, readInboxMaxId: _7!, readOutboxMaxId: _8!, unreadCount: _9!, chatPhoto: _10!, notifySettings: _11!, exportedInvite: _12!, botInfo: _13!, migratedFromChatId: _14, migratedFromMaxId: _15, pinnedMsgId: _16)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatFull(let id, let participants, let chatPhoto, let notifySettings, let exportedInvite, let botInfo):
                        return "(chatFull id: \(id), participants: \(participants), chatPhoto: \(chatPhoto), notifySettings: \(notifySettings), exportedInvite: \(exportedInvite), botInfo: \(botInfo))"
                    case .channelFull(let flags, let id, let about, let participantsCount, let adminsCount, let kickedCount, let readInboxMaxId, let readOutboxMaxId, let unreadCount, let chatPhoto, let notifySettings, let exportedInvite, let botInfo, let migratedFromChatId, let migratedFromMaxId, let pinnedMsgId):
                        return "(channelFull flags: \(flags), id: \(id), about: \(about), participantsCount: \(participantsCount), adminsCount: \(adminsCount), kickedCount: \(kickedCount), readInboxMaxId: \(readInboxMaxId), readOutboxMaxId: \(readOutboxMaxId), unreadCount: \(unreadCount), chatPhoto: \(chatPhoto), notifySettings: \(notifySettings), exportedInvite: \(exportedInvite), botInfo: \(botInfo), migratedFromChatId: \(migratedFromChatId), migratedFromMaxId: \(migratedFromMaxId), pinnedMsgId: \(pinnedMsgId))"
                }
            }
        }
    }

    public enum ChatParticipant: CustomStringConvertible {
        case chatParticipant(userId: Int32, inviterId: Int32, date: Int32)
        case chatParticipantCreator(userId: Int32)
        case chatParticipantAdmin(userId: Int32, inviterId: Int32, date: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatParticipant(let userId, let inviterId, let date):
                    if boxed {
                        buffer.appendInt32(-925415106)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .chatParticipantCreator(let userId):
                    if boxed {
                        buffer.appendInt32(-636267638)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
                case .chatParticipantAdmin(let userId, let inviterId, let date):
                    if boxed {
                        buffer.appendInt32(-489233354)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_chatParticipant(_ reader: BufferReader) -> ChatParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChatParticipant.chatParticipant(userId: _1!, inviterId: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_chatParticipantCreator(_ reader: BufferReader) -> ChatParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.ChatParticipant.chatParticipantCreator(userId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_chatParticipantAdmin(_ reader: BufferReader) -> ChatParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChatParticipant.chatParticipantAdmin(userId: _1!, inviterId: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatParticipant(let userId, let inviterId, let date):
                        return "(chatParticipant userId: \(userId), inviterId: \(inviterId), date: \(date))"
                    case .chatParticipantCreator(let userId):
                        return "(chatParticipantCreator userId: \(userId))"
                    case .chatParticipantAdmin(let userId, let inviterId, let date):
                        return "(chatParticipantAdmin userId: \(userId), inviterId: \(inviterId), date: \(date))"
                }
            }
        }
    }

    public enum SchemeMethod: CustomStringConvertible {
        case schemeMethod(id: Int32, method: String, params: [Api.SchemeParam], type: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .schemeMethod(let id, let method, let params, let type):
                    if boxed {
                        buffer.appendInt32(1200838592)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(method, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(params.count))
                    for item in params {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeString(type, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_schemeMethod(_ reader: BufferReader) -> SchemeMethod? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.SchemeParam]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SchemeParam.self)
            }
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.SchemeMethod.schemeMethod(id: _1!, method: _2!, params: _3!, type: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .schemeMethod(let id, let method, let params, let type):
                        return "(schemeMethod id: \(id), method: \(method), params: \(params), type: \(type))"
                }
            }
        }
    }

    public enum InputPhotoCrop: CustomStringConvertible {
        case inputPhotoCropAuto
        case inputPhotoCrop(cropLeft: Double, cropTop: Double, cropWidth: Double)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPhotoCropAuto:
                    if boxed {
                        buffer.appendInt32(-1377390588)
                    }
                    
                    break
                case .inputPhotoCrop(let cropLeft, let cropTop, let cropWidth):
                    if boxed {
                        buffer.appendInt32(-644787419)
                    }
                    serializeDouble(cropLeft, buffer: buffer, boxed: false)
                    serializeDouble(cropTop, buffer: buffer, boxed: false)
                    serializeDouble(cropWidth, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputPhotoCropAuto(_ reader: BufferReader) -> InputPhotoCrop? {
            return Api.InputPhotoCrop.inputPhotoCropAuto
        }
        private static func parse_inputPhotoCrop(_ reader: BufferReader) -> InputPhotoCrop? {
            var _1: Double?
            _1 = reader.readDouble()
            var _2: Double?
            _2 = reader.readDouble()
            var _3: Double?
            _3 = reader.readDouble()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputPhotoCrop.inputPhotoCrop(cropLeft: _1!, cropTop: _2!, cropWidth: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPhotoCropAuto:
                        return "(inputPhotoCropAuto)"
                    case .inputPhotoCrop(let cropLeft, let cropTop, let cropWidth):
                        return "(inputPhotoCrop cropLeft: \(cropLeft), cropTop: \(cropTop), cropWidth: \(cropWidth))"
                }
            }
        }
    }

    public enum Photo: CustomStringConvertible {
        case photoEmpty(id: Int64)
        case wallPhoto(id: Int64, accessHash: Int64, userId: Int32, date: Int32, caption: String, geo: Api.GeoPoint, unread: Api.Bool, sizes: [Api.PhotoSize])
        case photo(id: Int64, accessHash: Int64, date: Int32, sizes: [Api.PhotoSize])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .photoEmpty(let id):
                    if boxed {
                        buffer.appendInt32(590459437)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    break
                case .wallPhoto(let id, let accessHash, let userId, let date, let caption, let geo, let unread, let sizes):
                    if boxed {
                        buffer.appendInt32(1436402146)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeString(caption, buffer: buffer, boxed: false)
                    let _ = geo.serialize(buffer, true)
                    let _ = unread.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(sizes.count))
                    for item in sizes {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .photo(let id, let accessHash, let date, let sizes):
                    if boxed {
                        buffer.appendInt32(-840088834)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(sizes.count))
                    for item in sizes {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_photoEmpty(_ reader: BufferReader) -> Photo? {
            var _1: Int64?
            _1 = reader.readInt64()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Photo.photoEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_wallPhoto(_ reader: BufferReader) -> Photo? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: String?
            _5 = parseString(reader)
            var _6: Api.GeoPoint?
            if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            }
            var _7: Api.Bool?
            if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _8: [Api.PhotoSize]?
            if let _ = reader.readInt32() {
                _8 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PhotoSize.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 {
                return Api.Photo.wallPhoto(id: _1!, accessHash: _2!, userId: _3!, date: _4!, caption: _5!, geo: _6!, unread: _7!, sizes: _8!)
            }
            else {
                return nil
            }
        }
        private static func parse_photo(_ reader: BufferReader) -> Photo? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: [Api.PhotoSize]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PhotoSize.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Photo.photo(id: _1!, accessHash: _2!, date: _3!, sizes: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .photoEmpty(let id):
                        return "(photoEmpty id: \(id))"
                    case .wallPhoto(let id, let accessHash, let userId, let date, let caption, let geo, let unread, let sizes):
                        return "(wallPhoto id: \(id), accessHash: \(accessHash), userId: \(userId), date: \(date), caption: \(caption), geo: \(geo), unread: \(unread), sizes: \(sizes))"
                    case .photo(let id, let accessHash, let date, let sizes):
                        return "(photo id: \(id), accessHash: \(accessHash), date: \(date), sizes: \(sizes))"
                }
            }
        }
    }

    public enum Chat: CustomStringConvertible {
        case chatEmpty(id: Int32)
        case chatForbidden(id: Int32, title: String)
        case chat(flags: Int32, id: Int32, title: String, photo: Api.ChatPhoto, participantsCount: Int32, date: Int32, version: Int32, migratedTo: Api.InputChannel?)
        case channel(flags: Int32, id: Int32, accessHash: Int64?, title: String, username: String?, photo: Api.ChatPhoto, date: Int32, version: Int32, restrictionReason: String?)
        case channelForbidden(flags: Int32, id: Int32, accessHash: Int64, title: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatEmpty(let id):
                    if boxed {
                        buffer.appendInt32(-1683826688)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    break
                case .chatForbidden(let id, let title):
                    if boxed {
                        buffer.appendInt32(120753115)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    break
                case .chat(let flags, let id, let title, let photo, let participantsCount, let date, let version, let migratedTo):
                    if boxed {
                        buffer.appendInt32(-652419756)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    let _ = photo.serialize(buffer, true)
                    serializeInt32(participantsCount, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 6) != 0 {let _ = migratedTo!.serialize(buffer, true)}
                    break
                case .channel(let flags, let id, let accessHash, let title, let username, let photo, let date, let version, let restrictionReason):
                    if boxed {
                        buffer.appendInt32(-1588737454)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 13) != 0 {serializeInt64(accessHash!, buffer: buffer, boxed: false)}
                    serializeString(title, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 6) != 0 {serializeString(username!, buffer: buffer, boxed: false)}
                    let _ = photo.serialize(buffer, true)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 9) != 0 {serializeString(restrictionReason!, buffer: buffer, boxed: false)}
                    break
                case .channelForbidden(let flags, let id, let accessHash, let title):
                    if boxed {
                        buffer.appendInt32(-2059962289)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_chatEmpty(_ reader: BufferReader) -> Chat? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Chat.chatEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_chatForbidden(_ reader: BufferReader) -> Chat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Chat.chatForbidden(id: _1!, title: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_chat(_ reader: BufferReader) -> Chat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: Api.ChatPhoto?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.ChatPhoto
            }
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: Api.InputChannel?
            if Int(_1!) & Int(1 << 6) != 0 {if let signature = reader.readInt32() {
                _8 = Api.parse(reader, signature: signature) as? Api.InputChannel
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 6) == 0) || _8 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 {
                return Api.Chat.chat(flags: _1!, id: _2!, title: _3!, photo: _4!, participantsCount: _5!, date: _6!, version: _7!, migratedTo: _8)
            }
            else {
                return nil
            }
        }
        private static func parse_channel(_ reader: BufferReader) -> Chat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int64?
            if Int(_1!) & Int(1 << 13) != 0 {_3 = reader.readInt64() }
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            if Int(_1!) & Int(1 << 6) != 0 {_5 = parseString(reader) }
            var _6: Api.ChatPhoto?
            if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.ChatPhoto
            }
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: Int32?
            _8 = reader.readInt32()
            var _9: String?
            if Int(_1!) & Int(1 << 9) != 0 {_9 = parseString(reader) }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 13) == 0) || _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 6) == 0) || _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 9) == 0) || _9 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 {
                return Api.Chat.channel(flags: _1!, id: _2!, accessHash: _3, title: _4!, username: _5, photo: _6!, date: _7!, version: _8!, restrictionReason: _9)
            }
            else {
                return nil
            }
        }
        private static func parse_channelForbidden(_ reader: BufferReader) -> Chat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int64?
            _3 = reader.readInt64()
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Chat.channelForbidden(flags: _1!, id: _2!, accessHash: _3!, title: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatEmpty(let id):
                        return "(chatEmpty id: \(id))"
                    case .chatForbidden(let id, let title):
                        return "(chatForbidden id: \(id), title: \(title))"
                    case .chat(let flags, let id, let title, let photo, let participantsCount, let date, let version, let migratedTo):
                        return "(chat flags: \(flags), id: \(id), title: \(title), photo: \(photo), participantsCount: \(participantsCount), date: \(date), version: \(version), migratedTo: \(migratedTo))"
                    case .channel(let flags, let id, let accessHash, let title, let username, let photo, let date, let version, let restrictionReason):
                        return "(channel flags: \(flags), id: \(id), accessHash: \(accessHash), title: \(title), username: \(username), photo: \(photo), date: \(date), version: \(version), restrictionReason: \(restrictionReason))"
                    case .channelForbidden(let flags, let id, let accessHash, let title):
                        return "(channelForbidden flags: \(flags), id: \(id), accessHash: \(accessHash), title: \(title))"
                }
            }
        }
    }

    public enum ChatInvite: CustomStringConvertible {
        case chatInviteAlready(chat: Api.Chat)
        case chatInvite(flags: Int32, title: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatInviteAlready(let chat):
                    if boxed {
                        buffer.appendInt32(1516793212)
                    }
                    let _ = chat.serialize(buffer, true)
                    break
                case .chatInvite(let flags, let title):
                    if boxed {
                        buffer.appendInt32(-1813406880)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_chatInviteAlready(_ reader: BufferReader) -> ChatInvite? {
            var _1: Api.Chat?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Chat
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.ChatInvite.chatInviteAlready(chat: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_chatInvite(_ reader: BufferReader) -> ChatInvite? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ChatInvite.chatInvite(flags: _1!, title: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatInviteAlready(let chat):
                        return "(chatInviteAlready chat: \(chat))"
                    case .chatInvite(let flags, let title):
                        return "(chatInvite flags: \(flags), title: \(title))"
                }
            }
        }
    }

    public enum GeoPlaceName: CustomStringConvertible {
        case geoPlaceName(country: String, state: String, city: String, district: String, street: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .geoPlaceName(let country, let state, let city, let district, let street):
                    if boxed {
                        buffer.appendInt32(941183887)
                    }
                    serializeString(country, buffer: buffer, boxed: false)
                    serializeString(state, buffer: buffer, boxed: false)
                    serializeString(city, buffer: buffer, boxed: false)
                    serializeString(district, buffer: buffer, boxed: false)
                    serializeString(street, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_geoPlaceName(_ reader: BufferReader) -> GeoPlaceName? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.GeoPlaceName.geoPlaceName(country: _1!, state: _2!, city: _3!, district: _4!, street: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .geoPlaceName(let country, let state, let city, let district, let street):
                        return "(geoPlaceName country: \(country), state: \(state), city: \(city), district: \(district), street: \(street))"
                }
            }
        }
    }

    public enum UserFull: CustomStringConvertible {
        case userFull(flags: Int32, user: Api.User, about: String?, link: Api.contacts.Link, profilePhoto: Api.Photo?, notifySettings: Api.PeerNotifySettings, botInfo: Api.BotInfo?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .userFull(let flags, let user, let about, let link, let profilePhoto, let notifySettings, let botInfo):
                    if boxed {
                        buffer.appendInt32(1496513539)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = user.serialize(buffer, true)
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(about!, buffer: buffer, boxed: false)}
                    let _ = link.serialize(buffer, true)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = profilePhoto!.serialize(buffer, true)}
                    let _ = notifySettings.serialize(buffer, true)
                    if Int(flags) & Int(1 << 3) != 0 {let _ = botInfo!.serialize(buffer, true)}
                    break
    }
    return true
    }
    
        private static func parse_userFull(_ reader: BufferReader) -> UserFull? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.User?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.User
            }
            var _3: String?
            if Int(_1!) & Int(1 << 1) != 0 {_3 = parseString(reader) }
            var _4: Api.contacts.Link?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.contacts.Link
            }
            var _5: Api.Photo?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.Photo
            } }
            var _6: Api.PeerNotifySettings?
            if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.PeerNotifySettings
            }
            var _7: Api.BotInfo?
            if Int(_1!) & Int(1 << 3) != 0 {if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.BotInfo
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 3) == 0) || _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.UserFull.userFull(flags: _1!, user: _2!, about: _3, link: _4!, profilePhoto: _5, notifySettings: _6!, botInfo: _7)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .userFull(let flags, let user, let about, let link, let profilePhoto, let notifySettings, let botInfo):
                        return "(userFull flags: \(flags), user: \(user), about: \(about), link: \(link), profilePhoto: \(profilePhoto), notifySettings: \(notifySettings), botInfo: \(botInfo))"
                }
            }
        }
    }

    public enum InputPeerNotifyEvents: CustomStringConvertible {
        case inputPeerNotifyEventsEmpty
        case inputPeerNotifyEventsAll
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPeerNotifyEventsEmpty:
                    if boxed {
                        buffer.appendInt32(-265263912)
                    }
                    
                    break
                case .inputPeerNotifyEventsAll:
                    if boxed {
                        buffer.appendInt32(-395694988)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_inputPeerNotifyEventsEmpty(_ reader: BufferReader) -> InputPeerNotifyEvents? {
            return Api.InputPeerNotifyEvents.inputPeerNotifyEventsEmpty
        }
        private static func parse_inputPeerNotifyEventsAll(_ reader: BufferReader) -> InputPeerNotifyEvents? {
            return Api.InputPeerNotifyEvents.inputPeerNotifyEventsAll
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPeerNotifyEventsEmpty:
                        return "(inputPeerNotifyEventsEmpty)"
                    case .inputPeerNotifyEventsAll:
                        return "(inputPeerNotifyEventsAll)"
                }
            }
        }
    }

    public enum InputChannel: CustomStringConvertible {
        case inputChannelEmpty
        case inputChannel(channelId: Int32, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputChannelEmpty:
                    if boxed {
                        buffer.appendInt32(-292807034)
                    }
                    
                    break
                case .inputChannel(let channelId, let accessHash):
                    if boxed {
                        buffer.appendInt32(-1343524562)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputChannelEmpty(_ reader: BufferReader) -> InputChannel? {
            return Api.InputChannel.inputChannelEmpty
        }
        private static func parse_inputChannel(_ reader: BufferReader) -> InputChannel? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputChannel.inputChannel(channelId: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputChannelEmpty:
                        return "(inputChannelEmpty)"
                    case .inputChannel(let channelId, let accessHash):
                        return "(inputChannel channelId: \(channelId), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum DcOption: CustomStringConvertible {
        case dcOption(flags: Int32, id: Int32, ipAddress: String, port: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .dcOption(let flags, let id, let ipAddress, let port):
                    if boxed {
                        buffer.appendInt32(98092748)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(ipAddress, buffer: buffer, boxed: false)
                    serializeInt32(port, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_dcOption(_ reader: BufferReader) -> DcOption? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.DcOption.dcOption(flags: _1!, id: _2!, ipAddress: _3!, port: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .dcOption(let flags, let id, let ipAddress, let port):
                        return "(dcOption flags: \(flags), id: \(id), ipAddress: \(ipAddress), port: \(port))"
                }
            }
        }
    }

    public enum MessageGroup: CustomStringConvertible {
        case messageGroup(minId: Int32, maxId: Int32, count: Int32, date: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageGroup(let minId, let maxId, let count, let date):
                    if boxed {
                        buffer.appendInt32(-399216813)
                    }
                    serializeInt32(minId, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(count, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_messageGroup(_ reader: BufferReader) -> MessageGroup? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.MessageGroup.messageGroup(minId: _1!, maxId: _2!, count: _3!, date: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageGroup(let minId, let maxId, let count, let date):
                        return "(messageGroup minId: \(minId), maxId: \(maxId), count: \(count), date: \(date))"
                }
            }
        }
    }

    public enum ChannelParticipantRole: CustomStringConvertible {
        case channelRoleEmpty
        case channelRoleModerator
        case channelRoleEditor
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .channelRoleEmpty:
                    if boxed {
                        buffer.appendInt32(-1299865402)
                    }
                    
                    break
                case .channelRoleModerator:
                    if boxed {
                        buffer.appendInt32(-1776756363)
                    }
                    
                    break
                case .channelRoleEditor:
                    if boxed {
                        buffer.appendInt32(-2113143156)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_channelRoleEmpty(_ reader: BufferReader) -> ChannelParticipantRole? {
            return Api.ChannelParticipantRole.channelRoleEmpty
        }
        private static func parse_channelRoleModerator(_ reader: BufferReader) -> ChannelParticipantRole? {
            return Api.ChannelParticipantRole.channelRoleModerator
        }
        private static func parse_channelRoleEditor(_ reader: BufferReader) -> ChannelParticipantRole? {
            return Api.ChannelParticipantRole.channelRoleEditor
        }
    
        public var description: String {
            get {
                switch self {
                    case .channelRoleEmpty:
                        return "(channelRoleEmpty)"
                    case .channelRoleModerator:
                        return "(channelRoleModerator)"
                    case .channelRoleEditor:
                        return "(channelRoleEditor)"
                }
            }
        }
    }

    public enum InputEncryptedFile: CustomStringConvertible {
        case inputEncryptedFileEmpty
        case inputEncryptedFileUploaded(id: Int64, parts: Int32, md5Checksum: String, keyFingerprint: Int32)
        case inputEncryptedFile(id: Int64, accessHash: Int64)
        case inputEncryptedFileBigUploaded(id: Int64, parts: Int32, keyFingerprint: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputEncryptedFileEmpty:
                    if boxed {
                        buffer.appendInt32(406307684)
                    }
                    
                    break
                case .inputEncryptedFileUploaded(let id, let parts, let md5Checksum, let keyFingerprint):
                    if boxed {
                        buffer.appendInt32(1690108678)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt32(parts, buffer: buffer, boxed: false)
                    serializeString(md5Checksum, buffer: buffer, boxed: false)
                    serializeInt32(keyFingerprint, buffer: buffer, boxed: false)
                    break
                case .inputEncryptedFile(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(1511503333)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
                case .inputEncryptedFileBigUploaded(let id, let parts, let keyFingerprint):
                    if boxed {
                        buffer.appendInt32(767652808)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt32(parts, buffer: buffer, boxed: false)
                    serializeInt32(keyFingerprint, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputEncryptedFileEmpty(_ reader: BufferReader) -> InputEncryptedFile? {
            return Api.InputEncryptedFile.inputEncryptedFileEmpty
        }
        private static func parse_inputEncryptedFileUploaded(_ reader: BufferReader) -> InputEncryptedFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.InputEncryptedFile.inputEncryptedFileUploaded(id: _1!, parts: _2!, md5Checksum: _3!, keyFingerprint: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputEncryptedFile(_ reader: BufferReader) -> InputEncryptedFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputEncryptedFile.inputEncryptedFile(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputEncryptedFileBigUploaded(_ reader: BufferReader) -> InputEncryptedFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputEncryptedFile.inputEncryptedFileBigUploaded(id: _1!, parts: _2!, keyFingerprint: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputEncryptedFileEmpty:
                        return "(inputEncryptedFileEmpty)"
                    case .inputEncryptedFileUploaded(let id, let parts, let md5Checksum, let keyFingerprint):
                        return "(inputEncryptedFileUploaded id: \(id), parts: \(parts), md5Checksum: \(md5Checksum), keyFingerprint: \(keyFingerprint))"
                    case .inputEncryptedFile(let id, let accessHash):
                        return "(inputEncryptedFile id: \(id), accessHash: \(accessHash))"
                    case .inputEncryptedFileBigUploaded(let id, let parts, let keyFingerprint):
                        return "(inputEncryptedFileBigUploaded id: \(id), parts: \(parts), keyFingerprint: \(keyFingerprint))"
                }
            }
        }
    }

    public enum ExportedMessageLink: CustomStringConvertible {
        case exportedMessageLink(link: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .exportedMessageLink(let link):
                    if boxed {
                        buffer.appendInt32(524838915)
                    }
                    serializeString(link, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_exportedMessageLink(_ reader: BufferReader) -> ExportedMessageLink? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.ExportedMessageLink.exportedMessageLink(link: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .exportedMessageLink(let link):
                        return "(exportedMessageLink link: \(link))"
                }
            }
        }
    }

    public enum InputFile: CustomStringConvertible {
        case inputFile(id: Int64, parts: Int32, name: String, md5Checksum: String)
        case inputFileBig(id: Int64, parts: Int32, name: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputFile(let id, let parts, let name, let md5Checksum):
                    if boxed {
                        buffer.appendInt32(-181407105)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt32(parts, buffer: buffer, boxed: false)
                    serializeString(name, buffer: buffer, boxed: false)
                    serializeString(md5Checksum, buffer: buffer, boxed: false)
                    break
                case .inputFileBig(let id, let parts, let name):
                    if boxed {
                        buffer.appendInt32(-95482955)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt32(parts, buffer: buffer, boxed: false)
                    serializeString(name, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputFile(_ reader: BufferReader) -> InputFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.InputFile.inputFile(id: _1!, parts: _2!, name: _3!, md5Checksum: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputFileBig(_ reader: BufferReader) -> InputFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputFile.inputFileBig(id: _1!, parts: _2!, name: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputFile(let id, let parts, let name, let md5Checksum):
                        return "(inputFile id: \(id), parts: \(parts), name: \(name), md5Checksum: \(md5Checksum))"
                    case .inputFileBig(let id, let parts, let name):
                        return "(inputFileBig id: \(id), parts: \(parts), name: \(name))"
                }
            }
        }
    }

    public enum Peer: CustomStringConvertible {
        case peerUser(userId: Int32)
        case peerChat(chatId: Int32)
        case peerChannel(channelId: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .peerUser(let userId):
                    if boxed {
                        buffer.appendInt32(-1649296275)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
                case .peerChat(let chatId):
                    if boxed {
                        buffer.appendInt32(-1160714821)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    break
                case .peerChannel(let channelId):
                    if boxed {
                        buffer.appendInt32(-1109531342)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_peerUser(_ reader: BufferReader) -> Peer? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Peer.peerUser(userId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_peerChat(_ reader: BufferReader) -> Peer? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Peer.peerChat(chatId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_peerChannel(_ reader: BufferReader) -> Peer? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Peer.peerChannel(channelId: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .peerUser(let userId):
                        return "(peerUser userId: \(userId))"
                    case .peerChat(let chatId):
                        return "(peerChat chatId: \(chatId))"
                    case .peerChannel(let channelId):
                        return "(peerChannel channelId: \(channelId))"
                }
            }
        }
    }

    public enum UserStatus: CustomStringConvertible {
        case userStatusEmpty
        case userStatusOnline(expires: Int32)
        case userStatusOffline(wasOnline: Int32)
        case userStatusRecently
        case userStatusLastWeek
        case userStatusLastMonth
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .userStatusEmpty:
                    if boxed {
                        buffer.appendInt32(164646985)
                    }
                    
                    break
                case .userStatusOnline(let expires):
                    if boxed {
                        buffer.appendInt32(-306628279)
                    }
                    serializeInt32(expires, buffer: buffer, boxed: false)
                    break
                case .userStatusOffline(let wasOnline):
                    if boxed {
                        buffer.appendInt32(9203775)
                    }
                    serializeInt32(wasOnline, buffer: buffer, boxed: false)
                    break
                case .userStatusRecently:
                    if boxed {
                        buffer.appendInt32(-496024847)
                    }
                    
                    break
                case .userStatusLastWeek:
                    if boxed {
                        buffer.appendInt32(129960444)
                    }
                    
                    break
                case .userStatusLastMonth:
                    if boxed {
                        buffer.appendInt32(2011940674)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_userStatusEmpty(_ reader: BufferReader) -> UserStatus? {
            return Api.UserStatus.userStatusEmpty
        }
        private static func parse_userStatusOnline(_ reader: BufferReader) -> UserStatus? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.UserStatus.userStatusOnline(expires: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_userStatusOffline(_ reader: BufferReader) -> UserStatus? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.UserStatus.userStatusOffline(wasOnline: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_userStatusRecently(_ reader: BufferReader) -> UserStatus? {
            return Api.UserStatus.userStatusRecently
        }
        private static func parse_userStatusLastWeek(_ reader: BufferReader) -> UserStatus? {
            return Api.UserStatus.userStatusLastWeek
        }
        private static func parse_userStatusLastMonth(_ reader: BufferReader) -> UserStatus? {
            return Api.UserStatus.userStatusLastMonth
        }
    
        public var description: String {
            get {
                switch self {
                    case .userStatusEmpty:
                        return "(userStatusEmpty)"
                    case .userStatusOnline(let expires):
                        return "(userStatusOnline expires: \(expires))"
                    case .userStatusOffline(let wasOnline):
                        return "(userStatusOffline wasOnline: \(wasOnline))"
                    case .userStatusRecently:
                        return "(userStatusRecently)"
                    case .userStatusLastWeek:
                        return "(userStatusLastWeek)"
                    case .userStatusLastMonth:
                        return "(userStatusLastMonth)"
                }
            }
        }
    }

    public enum Dialog: CustomStringConvertible {
        case dialog(flags: Int32, peer: Api.Peer, topMessage: Int32, readInboxMaxId: Int32, readOutboxMaxId: Int32, unreadCount: Int32, notifySettings: Api.PeerNotifySettings, pts: Int32?, draft: Api.DraftMessage?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .dialog(let flags, let peer, let topMessage, let readInboxMaxId, let readOutboxMaxId, let unreadCount, let notifySettings, let pts, let draft):
                    if boxed {
                        buffer.appendInt32(1728035348)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(topMessage, buffer: buffer, boxed: false)
                    serializeInt32(readInboxMaxId, buffer: buffer, boxed: false)
                    serializeInt32(readOutboxMaxId, buffer: buffer, boxed: false)
                    serializeInt32(unreadCount, buffer: buffer, boxed: false)
                    let _ = notifySettings.serialize(buffer, true)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(pts!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {let _ = draft!.serialize(buffer, true)}
                    break
    }
    return true
    }
    
        private static func parse_dialog(_ reader: BufferReader) -> Dialog? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.Peer?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Api.PeerNotifySettings?
            if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.PeerNotifySettings
            }
            var _8: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_8 = reader.readInt32() }
            var _9: Api.DraftMessage?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _9 = Api.parse(reader, signature: signature) as? Api.DraftMessage
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 0) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 1) == 0) || _9 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 {
                return Api.Dialog.dialog(flags: _1!, peer: _2!, topMessage: _3!, readInboxMaxId: _4!, readOutboxMaxId: _5!, unreadCount: _6!, notifySettings: _7!, pts: _8, draft: _9)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .dialog(let flags, let peer, let topMessage, let readInboxMaxId, let readOutboxMaxId, let unreadCount, let notifySettings, let pts, let draft):
                        return "(dialog flags: \(flags), peer: \(peer), topMessage: \(topMessage), readInboxMaxId: \(readInboxMaxId), readOutboxMaxId: \(readOutboxMaxId), unreadCount: \(unreadCount), notifySettings: \(notifySettings), pts: \(pts), draft: \(draft))"
                }
            }
        }
    }

    public enum SendMessageAction: CustomStringConvertible {
        case sendMessageTypingAction
        case sendMessageCancelAction
        case sendMessageRecordVideoAction
        case sendMessageRecordAudioAction
        case sendMessageGeoLocationAction
        case sendMessageChooseContactAction
        case sendMessageUploadVideoAction(progress: Int32)
        case sendMessageUploadAudioAction(progress: Int32)
        case sendMessageUploadDocumentAction(progress: Int32)
        case sendMessageUploadPhotoAction(progress: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .sendMessageTypingAction:
                    if boxed {
                        buffer.appendInt32(381645902)
                    }
                    
                    break
                case .sendMessageCancelAction:
                    if boxed {
                        buffer.appendInt32(-44119819)
                    }
                    
                    break
                case .sendMessageRecordVideoAction:
                    if boxed {
                        buffer.appendInt32(-1584933265)
                    }
                    
                    break
                case .sendMessageRecordAudioAction:
                    if boxed {
                        buffer.appendInt32(-718310409)
                    }
                    
                    break
                case .sendMessageGeoLocationAction:
                    if boxed {
                        buffer.appendInt32(393186209)
                    }
                    
                    break
                case .sendMessageChooseContactAction:
                    if boxed {
                        buffer.appendInt32(1653390447)
                    }
                    
                    break
                case .sendMessageUploadVideoAction(let progress):
                    if boxed {
                        buffer.appendInt32(-378127636)
                    }
                    serializeInt32(progress, buffer: buffer, boxed: false)
                    break
                case .sendMessageUploadAudioAction(let progress):
                    if boxed {
                        buffer.appendInt32(-212740181)
                    }
                    serializeInt32(progress, buffer: buffer, boxed: false)
                    break
                case .sendMessageUploadDocumentAction(let progress):
                    if boxed {
                        buffer.appendInt32(-1441998364)
                    }
                    serializeInt32(progress, buffer: buffer, boxed: false)
                    break
                case .sendMessageUploadPhotoAction(let progress):
                    if boxed {
                        buffer.appendInt32(-774682074)
                    }
                    serializeInt32(progress, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_sendMessageTypingAction(_ reader: BufferReader) -> SendMessageAction? {
            return Api.SendMessageAction.sendMessageTypingAction
        }
        private static func parse_sendMessageCancelAction(_ reader: BufferReader) -> SendMessageAction? {
            return Api.SendMessageAction.sendMessageCancelAction
        }
        private static func parse_sendMessageRecordVideoAction(_ reader: BufferReader) -> SendMessageAction? {
            return Api.SendMessageAction.sendMessageRecordVideoAction
        }
        private static func parse_sendMessageRecordAudioAction(_ reader: BufferReader) -> SendMessageAction? {
            return Api.SendMessageAction.sendMessageRecordAudioAction
        }
        private static func parse_sendMessageGeoLocationAction(_ reader: BufferReader) -> SendMessageAction? {
            return Api.SendMessageAction.sendMessageGeoLocationAction
        }
        private static func parse_sendMessageChooseContactAction(_ reader: BufferReader) -> SendMessageAction? {
            return Api.SendMessageAction.sendMessageChooseContactAction
        }
        private static func parse_sendMessageUploadVideoAction(_ reader: BufferReader) -> SendMessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.SendMessageAction.sendMessageUploadVideoAction(progress: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_sendMessageUploadAudioAction(_ reader: BufferReader) -> SendMessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.SendMessageAction.sendMessageUploadAudioAction(progress: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_sendMessageUploadDocumentAction(_ reader: BufferReader) -> SendMessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.SendMessageAction.sendMessageUploadDocumentAction(progress: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_sendMessageUploadPhotoAction(_ reader: BufferReader) -> SendMessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.SendMessageAction.sendMessageUploadPhotoAction(progress: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .sendMessageTypingAction:
                        return "(sendMessageTypingAction)"
                    case .sendMessageCancelAction:
                        return "(sendMessageCancelAction)"
                    case .sendMessageRecordVideoAction:
                        return "(sendMessageRecordVideoAction)"
                    case .sendMessageRecordAudioAction:
                        return "(sendMessageRecordAudioAction)"
                    case .sendMessageGeoLocationAction:
                        return "(sendMessageGeoLocationAction)"
                    case .sendMessageChooseContactAction:
                        return "(sendMessageChooseContactAction)"
                    case .sendMessageUploadVideoAction(let progress):
                        return "(sendMessageUploadVideoAction progress: \(progress))"
                    case .sendMessageUploadAudioAction(let progress):
                        return "(sendMessageUploadAudioAction progress: \(progress))"
                    case .sendMessageUploadDocumentAction(let progress):
                        return "(sendMessageUploadDocumentAction progress: \(progress))"
                    case .sendMessageUploadPhotoAction(let progress):
                        return "(sendMessageUploadPhotoAction progress: \(progress))"
                }
            }
        }
    }

    public enum PrivacyKey: CustomStringConvertible {
        case privacyKeyStatusTimestamp
        case privacyKeyChatInvite
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .privacyKeyStatusTimestamp:
                    if boxed {
                        buffer.appendInt32(-1137792208)
                    }
                    
                    break
                case .privacyKeyChatInvite:
                    if boxed {
                        buffer.appendInt32(1343122938)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_privacyKeyStatusTimestamp(_ reader: BufferReader) -> PrivacyKey? {
            return Api.PrivacyKey.privacyKeyStatusTimestamp
        }
        private static func parse_privacyKeyChatInvite(_ reader: BufferReader) -> PrivacyKey? {
            return Api.PrivacyKey.privacyKeyChatInvite
        }
    
        public var description: String {
            get {
                switch self {
                    case .privacyKeyStatusTimestamp:
                        return "(privacyKeyStatusTimestamp)"
                    case .privacyKeyChatInvite:
                        return "(privacyKeyChatInvite)"
                }
            }
        }
    }

    public enum Update: CustomStringConvertible {
        case updateMessageID(id: Int32, randomId: Int64)
        case updateRestoreMessages(messages: [Int32], pts: Int32)
        case updateChatParticipants(participants: Api.ChatParticipants)
        case updateUserStatus(userId: Int32, status: Api.UserStatus)
        case updateContactRegistered(userId: Int32, date: Int32)
        case updateContactLocated(contacts: [Api.ContactLocated])
        case updateActivation(userId: Int32)
        case updateNewAuthorization(authKeyId: Int64, date: Int32, device: String, location: String)
        case updatePhoneCallRequested(phoneCall: Api.PhoneCall)
        case updatePhoneCallConfirmed(id: Int64, aOrB: Buffer, connection: Api.PhoneConnection)
        case updatePhoneCallDeclined(id: Int64)
        case updateUserPhoto(userId: Int32, date: Int32, photo: Api.UserProfilePhoto, previous: Api.Bool)
        case updateNewEncryptedMessage(message: Api.EncryptedMessage, qts: Int32)
        case updateEncryptedChatTyping(chatId: Int32)
        case updateEncryption(chat: Api.EncryptedChat, date: Int32)
        case updateEncryptedMessagesRead(chatId: Int32, maxDate: Int32, date: Int32)
        case updateChatParticipantDelete(chatId: Int32, userId: Int32, version: Int32)
        case updateDcOptions(dcOptions: [Api.DcOption])
        case updateUserBlocked(userId: Int32, blocked: Api.Bool)
        case updateNotifySettings(peer: Api.NotifyPeer, notifySettings: Api.PeerNotifySettings)
        case updateUserTyping(userId: Int32, action: Api.SendMessageAction)
        case updateChatUserTyping(chatId: Int32, userId: Int32, action: Api.SendMessageAction)
        case updateUserName(userId: Int32, firstName: String, lastName: String, username: String)
        case updateServiceNotification(type: String, message: String, media: Api.MessageMedia, popup: Api.Bool)
        case updatePrivacy(key: Api.PrivacyKey, rules: [Api.PrivacyRule])
        case updateUserPhone(userId: Int32, phone: String)
        case updateNewMessage(message: Api.Message, pts: Int32, ptsCount: Int32)
        case updateReadMessages(messages: [Int32], pts: Int32, ptsCount: Int32)
        case updateDeleteMessages(messages: [Int32], pts: Int32, ptsCount: Int32)
        case updateReadHistoryInbox(peer: Api.Peer, maxId: Int32, pts: Int32, ptsCount: Int32)
        case updateReadHistoryOutbox(peer: Api.Peer, maxId: Int32, pts: Int32, ptsCount: Int32)
        case updateContactLink(userId: Int32, myLink: Api.ContactLink, foreignLink: Api.ContactLink)
        case updateReadMessagesContents(messages: [Int32], pts: Int32, ptsCount: Int32)
        case updateChatParticipantAdd(chatId: Int32, userId: Int32, inviterId: Int32, date: Int32, version: Int32)
        case updateWebPage(webpage: Api.WebPage, pts: Int32, ptsCount: Int32)
        case updateChannel(channelId: Int32)
        case updateChannelGroup(channelId: Int32, group: Api.MessageGroup)
        case updateNewChannelMessage(message: Api.Message, pts: Int32, ptsCount: Int32)
        case updateReadChannelInbox(channelId: Int32, maxId: Int32)
        case updateDeleteChannelMessages(channelId: Int32, messages: [Int32], pts: Int32, ptsCount: Int32)
        case updateChannelMessageViews(channelId: Int32, id: Int32, views: Int32)
        case updateChatAdmins(chatId: Int32, enabled: Api.Bool, version: Int32)
        case updateChatParticipantAdmin(chatId: Int32, userId: Int32, isAdmin: Api.Bool, version: Int32)
        case updateNewStickerSet(stickerset: Api.messages.StickerSet)
        case updateStickerSetsOrder(order: [Int64])
        case updateStickerSets
        case updateSavedGifs
        case updateEditChannelMessage(message: Api.Message, pts: Int32, ptsCount: Int32)
        case updateChannelPinnedMessage(channelId: Int32, id: Int32)
        case updateChannelTooLong(flags: Int32, channelId: Int32, pts: Int32?)
        case updateBotCallbackQuery(queryId: Int64, userId: Int32, peer: Api.Peer, msgId: Int32, data: Buffer)
        case updateEditMessage(message: Api.Message, pts: Int32, ptsCount: Int32)
        case updateInlineBotCallbackQuery(queryId: Int64, userId: Int32, msgId: Api.InputBotInlineMessageID, data: Buffer)
        case updateBotInlineQuery(flags: Int32, queryId: Int64, userId: Int32, query: String, geo: Api.GeoPoint?, offset: String)
        case updateBotInlineSend(flags: Int32, userId: Int32, query: String, geo: Api.GeoPoint?, id: String, msgId: Api.InputBotInlineMessageID?)
        case updateReadChannelOutbox(channelId: Int32, maxId: Int32)
        case updateDraftMessage(peer: Api.Peer, draft: Api.DraftMessage)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .updateMessageID(let id, let randomId):
                    if boxed {
                        buffer.appendInt32(1318109142)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    break
                case .updateRestoreMessages(let messages, let pts):
                    if boxed {
                        buffer.appendInt32(-782376883)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    break
                case .updateChatParticipants(let participants):
                    if boxed {
                        buffer.appendInt32(125178264)
                    }
                    let _ = participants.serialize(buffer, true)
                    break
                case .updateUserStatus(let userId, let status):
                    if boxed {
                        buffer.appendInt32(469489699)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = status.serialize(buffer, true)
                    break
                case .updateContactRegistered(let userId, let date):
                    if boxed {
                        buffer.appendInt32(628472761)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .updateContactLocated(let contacts):
                    if boxed {
                        buffer.appendInt32(1602468195)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(contacts.count))
                    for item in contacts {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .updateActivation(let userId):
                    if boxed {
                        buffer.appendInt32(1869154659)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
                case .updateNewAuthorization(let authKeyId, let date, let device, let location):
                    if boxed {
                        buffer.appendInt32(-1895411046)
                    }
                    serializeInt64(authKeyId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeString(device, buffer: buffer, boxed: false)
                    serializeString(location, buffer: buffer, boxed: false)
                    break
                case .updatePhoneCallRequested(let phoneCall):
                    if boxed {
                        buffer.appendInt32(-623425266)
                    }
                    let _ = phoneCall.serialize(buffer, true)
                    break
                case .updatePhoneCallConfirmed(let id, let aOrB, let connection):
                    if boxed {
                        buffer.appendInt32(1443495816)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeBytes(aOrB, buffer: buffer, boxed: false)
                    let _ = connection.serialize(buffer, true)
                    break
                case .updatePhoneCallDeclined(let id):
                    if boxed {
                        buffer.appendInt32(833498306)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    break
                case .updateUserPhoto(let userId, let date, let photo, let previous):
                    if boxed {
                        buffer.appendInt32(-1791935732)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    let _ = photo.serialize(buffer, true)
                    let _ = previous.serialize(buffer, true)
                    break
                case .updateNewEncryptedMessage(let message, let qts):
                    if boxed {
                        buffer.appendInt32(314359194)
                    }
                    let _ = message.serialize(buffer, true)
                    serializeInt32(qts, buffer: buffer, boxed: false)
                    break
                case .updateEncryptedChatTyping(let chatId):
                    if boxed {
                        buffer.appendInt32(386986326)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    break
                case .updateEncryption(let chat, let date):
                    if boxed {
                        buffer.appendInt32(-1264392051)
                    }
                    let _ = chat.serialize(buffer, true)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .updateEncryptedMessagesRead(let chatId, let maxDate, let date):
                    if boxed {
                        buffer.appendInt32(956179895)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(maxDate, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .updateChatParticipantDelete(let chatId, let userId, let version):
                    if boxed {
                        buffer.appendInt32(1851755554)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    break
                case .updateDcOptions(let dcOptions):
                    if boxed {
                        buffer.appendInt32(-1906403213)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(dcOptions.count))
                    for item in dcOptions {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .updateUserBlocked(let userId, let blocked):
                    if boxed {
                        buffer.appendInt32(-2131957734)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = blocked.serialize(buffer, true)
                    break
                case .updateNotifySettings(let peer, let notifySettings):
                    if boxed {
                        buffer.appendInt32(-1094555409)
                    }
                    let _ = peer.serialize(buffer, true)
                    let _ = notifySettings.serialize(buffer, true)
                    break
                case .updateUserTyping(let userId, let action):
                    if boxed {
                        buffer.appendInt32(1548249383)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = action.serialize(buffer, true)
                    break
                case .updateChatUserTyping(let chatId, let userId, let action):
                    if boxed {
                        buffer.appendInt32(-1704596961)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = action.serialize(buffer, true)
                    break
                case .updateUserName(let userId, let firstName, let lastName, let username):
                    if boxed {
                        buffer.appendInt32(-1489818765)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    serializeString(username, buffer: buffer, boxed: false)
                    break
                case .updateServiceNotification(let type, let message, let media, let popup):
                    if boxed {
                        buffer.appendInt32(942527460)
                    }
                    serializeString(type, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    let _ = media.serialize(buffer, true)
                    let _ = popup.serialize(buffer, true)
                    break
                case .updatePrivacy(let key, let rules):
                    if boxed {
                        buffer.appendInt32(-298113238)
                    }
                    let _ = key.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(rules.count))
                    for item in rules {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .updateUserPhone(let userId, let phone):
                    if boxed {
                        buffer.appendInt32(314130811)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeString(phone, buffer: buffer, boxed: false)
                    break
                case .updateNewMessage(let message, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(522914557)
                    }
                    let _ = message.serialize(buffer, true)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateReadMessages(let messages, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(777696872)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateDeleteMessages(let messages, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(-1576161051)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateReadHistoryInbox(let peer, let maxId, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(-1721631396)
                    }
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateReadHistoryOutbox(let peer, let maxId, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(791617983)
                    }
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateContactLink(let userId, let myLink, let foreignLink):
                    if boxed {
                        buffer.appendInt32(-1657903163)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = myLink.serialize(buffer, true)
                    let _ = foreignLink.serialize(buffer, true)
                    break
                case .updateReadMessagesContents(let messages, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(1757493555)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateChatParticipantAdd(let chatId, let userId, let inviterId, let date, let version):
                    if boxed {
                        buffer.appendInt32(-364179876)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    break
                case .updateWebPage(let webpage, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(2139689491)
                    }
                    let _ = webpage.serialize(buffer, true)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateChannel(let channelId):
                    if boxed {
                        buffer.appendInt32(-1227598250)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    break
                case .updateChannelGroup(let channelId, let group):
                    if boxed {
                        buffer.appendInt32(-1016324548)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    let _ = group.serialize(buffer, true)
                    break
                case .updateNewChannelMessage(let message, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(1656358105)
                    }
                    let _ = message.serialize(buffer, true)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateReadChannelInbox(let channelId, let maxId):
                    if boxed {
                        buffer.appendInt32(1108669311)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    break
                case .updateDeleteChannelMessages(let channelId, let messages, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(-1015733815)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateChannelMessageViews(let channelId, let id, let views):
                    if boxed {
                        buffer.appendInt32(-1734268085)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt32(views, buffer: buffer, boxed: false)
                    break
                case .updateChatAdmins(let chatId, let enabled, let version):
                    if boxed {
                        buffer.appendInt32(1855224129)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    let _ = enabled.serialize(buffer, true)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    break
                case .updateChatParticipantAdmin(let chatId, let userId, let isAdmin, let version):
                    if boxed {
                        buffer.appendInt32(-1232070311)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = isAdmin.serialize(buffer, true)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    break
                case .updateNewStickerSet(let stickerset):
                    if boxed {
                        buffer.appendInt32(1753886890)
                    }
                    let _ = stickerset.serialize(buffer, true)
                    break
                case .updateStickerSetsOrder(let order):
                    if boxed {
                        buffer.appendInt32(-253774767)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(order.count))
                    for item in order {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    break
                case .updateStickerSets:
                    if boxed {
                        buffer.appendInt32(1135492588)
                    }
                    
                    break
                case .updateSavedGifs:
                    if boxed {
                        buffer.appendInt32(-1821035490)
                    }
                    
                    break
                case .updateEditChannelMessage(let message, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(457133559)
                    }
                    let _ = message.serialize(buffer, true)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateChannelPinnedMessage(let channelId, let id):
                    if boxed {
                        buffer.appendInt32(-1738988427)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    break
                case .updateChannelTooLong(let flags, let channelId, let pts):
                    if boxed {
                        buffer.appendInt32(-352032773)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(pts!, buffer: buffer, boxed: false)}
                    break
                case .updateBotCallbackQuery(let queryId, let userId, let peer, let msgId, let data):
                    if boxed {
                        buffer.appendInt32(-1500747636)
                    }
                    serializeInt64(queryId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(msgId, buffer: buffer, boxed: false)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    break
                case .updateEditMessage(let message, let pts, let ptsCount):
                    if boxed {
                        buffer.appendInt32(-469536605)
                    }
                    let _ = message.serialize(buffer, true)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    break
                case .updateInlineBotCallbackQuery(let queryId, let userId, let msgId, let data):
                    if boxed {
                        buffer.appendInt32(750622127)
                    }
                    serializeInt64(queryId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = msgId.serialize(buffer, true)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    break
                case .updateBotInlineQuery(let flags, let queryId, let userId, let query, let geo, let offset):
                    if boxed {
                        buffer.appendInt32(1417832080)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt64(queryId, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeString(query, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = geo!.serialize(buffer, true)}
                    serializeString(offset, buffer: buffer, boxed: false)
                    break
                case .updateBotInlineSend(let flags, let userId, let query, let geo, let id, let msgId):
                    if boxed {
                        buffer.appendInt32(239663460)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeString(query, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = geo!.serialize(buffer, true)}
                    serializeString(id, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {let _ = msgId!.serialize(buffer, true)}
                    break
                case .updateReadChannelOutbox(let channelId, let maxId):
                    if boxed {
                        buffer.appendInt32(634833351)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    break
                case .updateDraftMessage(let peer, let draft):
                    if boxed {
                        buffer.appendInt32(-299124375)
                    }
                    let _ = peer.serialize(buffer, true)
                    let _ = draft.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_updateMessageID(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateMessageID(id: _1!, randomId: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateRestoreMessages(_ reader: BufferReader) -> Update? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateRestoreMessages(messages: _1!, pts: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChatParticipants(_ reader: BufferReader) -> Update? {
            var _1: Api.ChatParticipants?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.ChatParticipants
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateChatParticipants(participants: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateUserStatus(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.UserStatus?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.UserStatus
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateUserStatus(userId: _1!, status: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateContactRegistered(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateContactRegistered(userId: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateContactLocated(_ reader: BufferReader) -> Update? {
            var _1: [Api.ContactLocated]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactLocated.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateContactLocated(contacts: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateActivation(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateActivation(userId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateNewAuthorization(_ reader: BufferReader) -> Update? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateNewAuthorization(authKeyId: _1!, date: _2!, device: _3!, location: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updatePhoneCallRequested(_ reader: BufferReader) -> Update? {
            var _1: Api.PhoneCall?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.PhoneCall
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updatePhoneCallRequested(phoneCall: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updatePhoneCallConfirmed(_ reader: BufferReader) -> Update? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Buffer?
            _2 = parseBytes(reader)
            var _3: Api.PhoneConnection?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.PhoneConnection
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updatePhoneCallConfirmed(id: _1!, aOrB: _2!, connection: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updatePhoneCallDeclined(_ reader: BufferReader) -> Update? {
            var _1: Int64?
            _1 = reader.readInt64()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updatePhoneCallDeclined(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateUserPhoto(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.UserProfilePhoto?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.UserProfilePhoto
            }
            var _4: Api.Bool?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateUserPhoto(userId: _1!, date: _2!, photo: _3!, previous: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateNewEncryptedMessage(_ reader: BufferReader) -> Update? {
            var _1: Api.EncryptedMessage?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.EncryptedMessage
            }
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateNewEncryptedMessage(message: _1!, qts: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateEncryptedChatTyping(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateEncryptedChatTyping(chatId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateEncryption(_ reader: BufferReader) -> Update? {
            var _1: Api.EncryptedChat?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.EncryptedChat
            }
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateEncryption(chat: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateEncryptedMessagesRead(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateEncryptedMessagesRead(chatId: _1!, maxDate: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChatParticipantDelete(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateChatParticipantDelete(chatId: _1!, userId: _2!, version: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateDcOptions(_ reader: BufferReader) -> Update? {
            var _1: [Api.DcOption]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.DcOption.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateDcOptions(dcOptions: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateUserBlocked(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.Bool?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateUserBlocked(userId: _1!, blocked: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateNotifySettings(_ reader: BufferReader) -> Update? {
            var _1: Api.NotifyPeer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.NotifyPeer
            }
            var _2: Api.PeerNotifySettings?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.PeerNotifySettings
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateNotifySettings(peer: _1!, notifySettings: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateUserTyping(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.SendMessageAction?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.SendMessageAction
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateUserTyping(userId: _1!, action: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChatUserTyping(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.SendMessageAction?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.SendMessageAction
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateChatUserTyping(chatId: _1!, userId: _2!, action: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateUserName(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateUserName(userId: _1!, firstName: _2!, lastName: _3!, username: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateServiceNotification(_ reader: BufferReader) -> Update? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: Api.MessageMedia?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.MessageMedia
            }
            var _4: Api.Bool?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateServiceNotification(type: _1!, message: _2!, media: _3!, popup: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updatePrivacy(_ reader: BufferReader) -> Update? {
            var _1: Api.PrivacyKey?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.PrivacyKey
            }
            var _2: [Api.PrivacyRule]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PrivacyRule.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updatePrivacy(key: _1!, rules: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateUserPhone(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateUserPhone(userId: _1!, phone: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateNewMessage(_ reader: BufferReader) -> Update? {
            var _1: Api.Message?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Message
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateNewMessage(message: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateReadMessages(_ reader: BufferReader) -> Update? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateReadMessages(messages: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateDeleteMessages(_ reader: BufferReader) -> Update? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateDeleteMessages(messages: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateReadHistoryInbox(_ reader: BufferReader) -> Update? {
            var _1: Api.Peer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateReadHistoryInbox(peer: _1!, maxId: _2!, pts: _3!, ptsCount: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateReadHistoryOutbox(_ reader: BufferReader) -> Update? {
            var _1: Api.Peer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateReadHistoryOutbox(peer: _1!, maxId: _2!, pts: _3!, ptsCount: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateContactLink(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.ContactLink?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.ContactLink
            }
            var _3: Api.ContactLink?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.ContactLink
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateContactLink(userId: _1!, myLink: _2!, foreignLink: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateReadMessagesContents(_ reader: BufferReader) -> Update? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateReadMessagesContents(messages: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChatParticipantAdd(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.Update.updateChatParticipantAdd(chatId: _1!, userId: _2!, inviterId: _3!, date: _4!, version: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateWebPage(_ reader: BufferReader) -> Update? {
            var _1: Api.WebPage?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.WebPage
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateWebPage(webpage: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChannel(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateChannel(channelId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChannelGroup(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.MessageGroup?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.MessageGroup
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateChannelGroup(channelId: _1!, group: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateNewChannelMessage(_ reader: BufferReader) -> Update? {
            var _1: Api.Message?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Message
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateNewChannelMessage(message: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateReadChannelInbox(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateReadChannelInbox(channelId: _1!, maxId: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateDeleteChannelMessages(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Int32]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateDeleteChannelMessages(channelId: _1!, messages: _2!, pts: _3!, ptsCount: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChannelMessageViews(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateChannelMessageViews(channelId: _1!, id: _2!, views: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChatAdmins(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.Bool?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateChatAdmins(chatId: _1!, enabled: _2!, version: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChatParticipantAdmin(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.Bool?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateChatParticipantAdmin(chatId: _1!, userId: _2!, isAdmin: _3!, version: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateNewStickerSet(_ reader: BufferReader) -> Update? {
            var _1: Api.messages.StickerSet?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.messages.StickerSet
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateNewStickerSet(stickerset: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateStickerSetsOrder(_ reader: BufferReader) -> Update? {
            var _1: [Int64]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.Update.updateStickerSetsOrder(order: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateStickerSets(_ reader: BufferReader) -> Update? {
            return Api.Update.updateStickerSets
        }
        private static func parse_updateSavedGifs(_ reader: BufferReader) -> Update? {
            return Api.Update.updateSavedGifs
        }
        private static func parse_updateEditChannelMessage(_ reader: BufferReader) -> Update? {
            var _1: Api.Message?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Message
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateEditChannelMessage(message: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChannelPinnedMessage(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateChannelPinnedMessage(channelId: _1!, id: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateChannelTooLong(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_3 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateChannelTooLong(flags: _1!, channelId: _2!, pts: _3)
            }
            else {
                return nil
            }
        }
        private static func parse_updateBotCallbackQuery(_ reader: BufferReader) -> Update? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.Peer?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Buffer?
            _5 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.Update.updateBotCallbackQuery(queryId: _1!, userId: _2!, peer: _3!, msgId: _4!, data: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateEditMessage(_ reader: BufferReader) -> Update? {
            var _1: Api.Message?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Message
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.Update.updateEditMessage(message: _1!, pts: _2!, ptsCount: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateInlineBotCallbackQuery(_ reader: BufferReader) -> Update? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.InputBotInlineMessageID?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.InputBotInlineMessageID
            }
            var _4: Buffer?
            _4 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Update.updateInlineBotCallbackQuery(queryId: _1!, userId: _2!, msgId: _3!, data: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateBotInlineQuery(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: String?
            _4 = parseString(reader)
            var _5: Api.GeoPoint?
            if Int(_1!) & Int(1 << 0) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            } }
            var _6: String?
            _6 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 0) == 0) || _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.Update.updateBotInlineQuery(flags: _1!, queryId: _2!, userId: _3!, query: _4!, geo: _5, offset: _6!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateBotInlineSend(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: Api.GeoPoint?
            if Int(_1!) & Int(1 << 0) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            } }
            var _5: String?
            _5 = parseString(reader)
            var _6: Api.InputBotInlineMessageID?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.InputBotInlineMessageID
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 0) == 0) || _4 != nil
            let _c5 = _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 1) == 0) || _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.Update.updateBotInlineSend(flags: _1!, userId: _2!, query: _3!, geo: _4, id: _5!, msgId: _6)
            }
            else {
                return nil
            }
        }
        private static func parse_updateReadChannelOutbox(_ reader: BufferReader) -> Update? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateReadChannelOutbox(channelId: _1!, maxId: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateDraftMessage(_ reader: BufferReader) -> Update? {
            var _1: Api.Peer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _2: Api.DraftMessage?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.DraftMessage
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Update.updateDraftMessage(peer: _1!, draft: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .updateMessageID(let id, let randomId):
                        return "(updateMessageID id: \(id), randomId: \(randomId))"
                    case .updateRestoreMessages(let messages, let pts):
                        return "(updateRestoreMessages messages: \(messages), pts: \(pts))"
                    case .updateChatParticipants(let participants):
                        return "(updateChatParticipants participants: \(participants))"
                    case .updateUserStatus(let userId, let status):
                        return "(updateUserStatus userId: \(userId), status: \(status))"
                    case .updateContactRegistered(let userId, let date):
                        return "(updateContactRegistered userId: \(userId), date: \(date))"
                    case .updateContactLocated(let contacts):
                        return "(updateContactLocated contacts: \(contacts))"
                    case .updateActivation(let userId):
                        return "(updateActivation userId: \(userId))"
                    case .updateNewAuthorization(let authKeyId, let date, let device, let location):
                        return "(updateNewAuthorization authKeyId: \(authKeyId), date: \(date), device: \(device), location: \(location))"
                    case .updatePhoneCallRequested(let phoneCall):
                        return "(updatePhoneCallRequested phoneCall: \(phoneCall))"
                    case .updatePhoneCallConfirmed(let id, let aOrB, let connection):
                        return "(updatePhoneCallConfirmed id: \(id), aOrB: \(aOrB), connection: \(connection))"
                    case .updatePhoneCallDeclined(let id):
                        return "(updatePhoneCallDeclined id: \(id))"
                    case .updateUserPhoto(let userId, let date, let photo, let previous):
                        return "(updateUserPhoto userId: \(userId), date: \(date), photo: \(photo), previous: \(previous))"
                    case .updateNewEncryptedMessage(let message, let qts):
                        return "(updateNewEncryptedMessage message: \(message), qts: \(qts))"
                    case .updateEncryptedChatTyping(let chatId):
                        return "(updateEncryptedChatTyping chatId: \(chatId))"
                    case .updateEncryption(let chat, let date):
                        return "(updateEncryption chat: \(chat), date: \(date))"
                    case .updateEncryptedMessagesRead(let chatId, let maxDate, let date):
                        return "(updateEncryptedMessagesRead chatId: \(chatId), maxDate: \(maxDate), date: \(date))"
                    case .updateChatParticipantDelete(let chatId, let userId, let version):
                        return "(updateChatParticipantDelete chatId: \(chatId), userId: \(userId), version: \(version))"
                    case .updateDcOptions(let dcOptions):
                        return "(updateDcOptions dcOptions: \(dcOptions))"
                    case .updateUserBlocked(let userId, let blocked):
                        return "(updateUserBlocked userId: \(userId), blocked: \(blocked))"
                    case .updateNotifySettings(let peer, let notifySettings):
                        return "(updateNotifySettings peer: \(peer), notifySettings: \(notifySettings))"
                    case .updateUserTyping(let userId, let action):
                        return "(updateUserTyping userId: \(userId), action: \(action))"
                    case .updateChatUserTyping(let chatId, let userId, let action):
                        return "(updateChatUserTyping chatId: \(chatId), userId: \(userId), action: \(action))"
                    case .updateUserName(let userId, let firstName, let lastName, let username):
                        return "(updateUserName userId: \(userId), firstName: \(firstName), lastName: \(lastName), username: \(username))"
                    case .updateServiceNotification(let type, let message, let media, let popup):
                        return "(updateServiceNotification type: \(type), message: \(message), media: \(media), popup: \(popup))"
                    case .updatePrivacy(let key, let rules):
                        return "(updatePrivacy key: \(key), rules: \(rules))"
                    case .updateUserPhone(let userId, let phone):
                        return "(updateUserPhone userId: \(userId), phone: \(phone))"
                    case .updateNewMessage(let message, let pts, let ptsCount):
                        return "(updateNewMessage message: \(message), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateReadMessages(let messages, let pts, let ptsCount):
                        return "(updateReadMessages messages: \(messages), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateDeleteMessages(let messages, let pts, let ptsCount):
                        return "(updateDeleteMessages messages: \(messages), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateReadHistoryInbox(let peer, let maxId, let pts, let ptsCount):
                        return "(updateReadHistoryInbox peer: \(peer), maxId: \(maxId), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateReadHistoryOutbox(let peer, let maxId, let pts, let ptsCount):
                        return "(updateReadHistoryOutbox peer: \(peer), maxId: \(maxId), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateContactLink(let userId, let myLink, let foreignLink):
                        return "(updateContactLink userId: \(userId), myLink: \(myLink), foreignLink: \(foreignLink))"
                    case .updateReadMessagesContents(let messages, let pts, let ptsCount):
                        return "(updateReadMessagesContents messages: \(messages), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateChatParticipantAdd(let chatId, let userId, let inviterId, let date, let version):
                        return "(updateChatParticipantAdd chatId: \(chatId), userId: \(userId), inviterId: \(inviterId), date: \(date), version: \(version))"
                    case .updateWebPage(let webpage, let pts, let ptsCount):
                        return "(updateWebPage webpage: \(webpage), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateChannel(let channelId):
                        return "(updateChannel channelId: \(channelId))"
                    case .updateChannelGroup(let channelId, let group):
                        return "(updateChannelGroup channelId: \(channelId), group: \(group))"
                    case .updateNewChannelMessage(let message, let pts, let ptsCount):
                        return "(updateNewChannelMessage message: \(message), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateReadChannelInbox(let channelId, let maxId):
                        return "(updateReadChannelInbox channelId: \(channelId), maxId: \(maxId))"
                    case .updateDeleteChannelMessages(let channelId, let messages, let pts, let ptsCount):
                        return "(updateDeleteChannelMessages channelId: \(channelId), messages: \(messages), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateChannelMessageViews(let channelId, let id, let views):
                        return "(updateChannelMessageViews channelId: \(channelId), id: \(id), views: \(views))"
                    case .updateChatAdmins(let chatId, let enabled, let version):
                        return "(updateChatAdmins chatId: \(chatId), enabled: \(enabled), version: \(version))"
                    case .updateChatParticipantAdmin(let chatId, let userId, let isAdmin, let version):
                        return "(updateChatParticipantAdmin chatId: \(chatId), userId: \(userId), isAdmin: \(isAdmin), version: \(version))"
                    case .updateNewStickerSet(let stickerset):
                        return "(updateNewStickerSet stickerset: \(stickerset))"
                    case .updateStickerSetsOrder(let order):
                        return "(updateStickerSetsOrder order: \(order))"
                    case .updateStickerSets:
                        return "(updateStickerSets)"
                    case .updateSavedGifs:
                        return "(updateSavedGifs)"
                    case .updateEditChannelMessage(let message, let pts, let ptsCount):
                        return "(updateEditChannelMessage message: \(message), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateChannelPinnedMessage(let channelId, let id):
                        return "(updateChannelPinnedMessage channelId: \(channelId), id: \(id))"
                    case .updateChannelTooLong(let flags, let channelId, let pts):
                        return "(updateChannelTooLong flags: \(flags), channelId: \(channelId), pts: \(pts))"
                    case .updateBotCallbackQuery(let queryId, let userId, let peer, let msgId, let data):
                        return "(updateBotCallbackQuery queryId: \(queryId), userId: \(userId), peer: \(peer), msgId: \(msgId), data: \(data))"
                    case .updateEditMessage(let message, let pts, let ptsCount):
                        return "(updateEditMessage message: \(message), pts: \(pts), ptsCount: \(ptsCount))"
                    case .updateInlineBotCallbackQuery(let queryId, let userId, let msgId, let data):
                        return "(updateInlineBotCallbackQuery queryId: \(queryId), userId: \(userId), msgId: \(msgId), data: \(data))"
                    case .updateBotInlineQuery(let flags, let queryId, let userId, let query, let geo, let offset):
                        return "(updateBotInlineQuery flags: \(flags), queryId: \(queryId), userId: \(userId), query: \(query), geo: \(geo), offset: \(offset))"
                    case .updateBotInlineSend(let flags, let userId, let query, let geo, let id, let msgId):
                        return "(updateBotInlineSend flags: \(flags), userId: \(userId), query: \(query), geo: \(geo), id: \(id), msgId: \(msgId))"
                    case .updateReadChannelOutbox(let channelId, let maxId):
                        return "(updateReadChannelOutbox channelId: \(channelId), maxId: \(maxId))"
                    case .updateDraftMessage(let peer, let draft):
                        return "(updateDraftMessage peer: \(peer), draft: \(draft))"
                }
            }
        }
    }

    public enum ChannelParticipant: CustomStringConvertible {
        case channelParticipant(userId: Int32, date: Int32)
        case channelParticipantSelf(userId: Int32, inviterId: Int32, date: Int32)
        case channelParticipantModerator(userId: Int32, inviterId: Int32, date: Int32)
        case channelParticipantEditor(userId: Int32, inviterId: Int32, date: Int32)
        case channelParticipantKicked(userId: Int32, kickedBy: Int32, date: Int32)
        case channelParticipantCreator(userId: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .channelParticipant(let userId, let date):
                    if boxed {
                        buffer.appendInt32(367766557)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .channelParticipantSelf(let userId, let inviterId, let date):
                    if boxed {
                        buffer.appendInt32(-1557620115)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .channelParticipantModerator(let userId, let inviterId, let date):
                    if boxed {
                        buffer.appendInt32(-1861910545)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .channelParticipantEditor(let userId, let inviterId, let date):
                    if boxed {
                        buffer.appendInt32(-1743180447)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .channelParticipantKicked(let userId, let kickedBy, let date):
                    if boxed {
                        buffer.appendInt32(-1933187430)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(kickedBy, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .channelParticipantCreator(let userId):
                    if boxed {
                        buffer.appendInt32(-471670279)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_channelParticipant(_ reader: BufferReader) -> ChannelParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ChannelParticipant.channelParticipant(userId: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelParticipantSelf(_ reader: BufferReader) -> ChannelParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChannelParticipant.channelParticipantSelf(userId: _1!, inviterId: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelParticipantModerator(_ reader: BufferReader) -> ChannelParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChannelParticipant.channelParticipantModerator(userId: _1!, inviterId: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelParticipantEditor(_ reader: BufferReader) -> ChannelParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChannelParticipant.channelParticipantEditor(userId: _1!, inviterId: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelParticipantKicked(_ reader: BufferReader) -> ChannelParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChannelParticipant.channelParticipantKicked(userId: _1!, kickedBy: _2!, date: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelParticipantCreator(_ reader: BufferReader) -> ChannelParticipant? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.ChannelParticipant.channelParticipantCreator(userId: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .channelParticipant(let userId, let date):
                        return "(channelParticipant userId: \(userId), date: \(date))"
                    case .channelParticipantSelf(let userId, let inviterId, let date):
                        return "(channelParticipantSelf userId: \(userId), inviterId: \(inviterId), date: \(date))"
                    case .channelParticipantModerator(let userId, let inviterId, let date):
                        return "(channelParticipantModerator userId: \(userId), inviterId: \(inviterId), date: \(date))"
                    case .channelParticipantEditor(let userId, let inviterId, let date):
                        return "(channelParticipantEditor userId: \(userId), inviterId: \(inviterId), date: \(date))"
                    case .channelParticipantKicked(let userId, let kickedBy, let date):
                        return "(channelParticipantKicked userId: \(userId), kickedBy: \(kickedBy), date: \(date))"
                    case .channelParticipantCreator(let userId):
                        return "(channelParticipantCreator userId: \(userId))"
                }
            }
        }
    }

    public enum Error: CustomStringConvertible {
        case error(code: Int32, text: String)
        case richError(code: Int32, type: String, nDescription: String, debug: String, requestParams: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .error(let code, let text):
                    if boxed {
                        buffer.appendInt32(-994444869)
                    }
                    serializeInt32(code, buffer: buffer, boxed: false)
                    serializeString(text, buffer: buffer, boxed: false)
                    break
                case .richError(let code, let type, let nDescription, let debug, let requestParams):
                    if boxed {
                        buffer.appendInt32(1504640087)
                    }
                    serializeInt32(code, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    serializeString(nDescription, buffer: buffer, boxed: false)
                    serializeString(debug, buffer: buffer, boxed: false)
                    serializeString(requestParams, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_error(_ reader: BufferReader) -> Error? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Error.error(code: _1!, text: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_richError(_ reader: BufferReader) -> Error? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.Error.richError(code: _1!, type: _2!, nDescription: _3!, debug: _4!, requestParams: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .error(let code, let text):
                        return "(error code: \(code), text: \(text))"
                    case .richError(let code, let type, let nDescription, let debug, let requestParams):
                        return "(richError code: \(code), type: \(type), nDescription: \(nDescription), debug: \(debug), requestParams: \(requestParams))"
                }
            }
        }
    }

    public enum ContactLocated: CustomStringConvertible {
        case contactLocated(userId: Int32, location: Api.GeoPoint, date: Int32, distance: Int32)
        case contactLocatedPreview(hash: String, hidden: Api.Bool, date: Int32, distance: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contactLocated(let userId, let location, let date, let distance):
                    if boxed {
                        buffer.appendInt32(-515593041)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = location.serialize(buffer, true)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(distance, buffer: buffer, boxed: false)
                    break
                case .contactLocatedPreview(let hash, let hidden, let date, let distance):
                    if boxed {
                        buffer.appendInt32(-1054510761)
                    }
                    serializeString(hash, buffer: buffer, boxed: false)
                    let _ = hidden.serialize(buffer, true)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(distance, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_contactLocated(_ reader: BufferReader) -> ContactLocated? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.GeoPoint?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.ContactLocated.contactLocated(userId: _1!, location: _2!, date: _3!, distance: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_contactLocatedPreview(_ reader: BufferReader) -> ContactLocated? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Api.Bool?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.ContactLocated.contactLocatedPreview(hash: _1!, hidden: _2!, date: _3!, distance: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .contactLocated(let userId, let location, let date, let distance):
                        return "(contactLocated userId: \(userId), location: \(location), date: \(date), distance: \(distance))"
                    case .contactLocatedPreview(let hash, let hidden, let date, let distance):
                        return "(contactLocatedPreview hash: \(hash), hidden: \(hidden), date: \(date), distance: \(distance))"
                }
            }
        }
    }

    public enum KeyboardButton: CustomStringConvertible {
        case keyboardButton(text: String)
        case keyboardButtonUrl(text: String, url: String)
        case keyboardButtonCallback(text: String, data: Buffer)
        case keyboardButtonRequestPhone(text: String)
        case keyboardButtonRequestGeoLocation(text: String)
        case keyboardButtonSwitchInline(text: String, query: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .keyboardButton(let text):
                    if boxed {
                        buffer.appendInt32(-1560655744)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    break
                case .keyboardButtonUrl(let text, let url):
                    if boxed {
                        buffer.appendInt32(629866245)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    serializeString(url, buffer: buffer, boxed: false)
                    break
                case .keyboardButtonCallback(let text, let data):
                    if boxed {
                        buffer.appendInt32(1748655686)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    break
                case .keyboardButtonRequestPhone(let text):
                    if boxed {
                        buffer.appendInt32(-1318425559)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    break
                case .keyboardButtonRequestGeoLocation(let text):
                    if boxed {
                        buffer.appendInt32(-59151553)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    break
                case .keyboardButtonSwitchInline(let text, let query):
                    if boxed {
                        buffer.appendInt32(-367298028)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    serializeString(query, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_keyboardButton(_ reader: BufferReader) -> KeyboardButton? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.KeyboardButton.keyboardButton(text: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_keyboardButtonUrl(_ reader: BufferReader) -> KeyboardButton? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.KeyboardButton.keyboardButtonUrl(text: _1!, url: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_keyboardButtonCallback(_ reader: BufferReader) -> KeyboardButton? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Buffer?
            _2 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.KeyboardButton.keyboardButtonCallback(text: _1!, data: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_keyboardButtonRequestPhone(_ reader: BufferReader) -> KeyboardButton? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.KeyboardButton.keyboardButtonRequestPhone(text: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_keyboardButtonRequestGeoLocation(_ reader: BufferReader) -> KeyboardButton? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.KeyboardButton.keyboardButtonRequestGeoLocation(text: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_keyboardButtonSwitchInline(_ reader: BufferReader) -> KeyboardButton? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.KeyboardButton.keyboardButtonSwitchInline(text: _1!, query: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .keyboardButton(let text):
                        return "(keyboardButton text: \(text))"
                    case .keyboardButtonUrl(let text, let url):
                        return "(keyboardButtonUrl text: \(text), url: \(url))"
                    case .keyboardButtonCallback(let text, let data):
                        return "(keyboardButtonCallback text: \(text), data: \(data))"
                    case .keyboardButtonRequestPhone(let text):
                        return "(keyboardButtonRequestPhone text: \(text))"
                    case .keyboardButtonRequestGeoLocation(let text):
                        return "(keyboardButtonRequestGeoLocation text: \(text))"
                    case .keyboardButtonSwitchInline(let text, let query):
                        return "(keyboardButtonSwitchInline text: \(text), query: \(query))"
                }
            }
        }
    }

    public enum ContactStatus: CustomStringConvertible {
        case contactStatus(userId: Int32, status: Api.UserStatus)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contactStatus(let userId, let status):
                    if boxed {
                        buffer.appendInt32(-748155807)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = status.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_contactStatus(_ reader: BufferReader) -> ContactStatus? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.UserStatus?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.UserStatus
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ContactStatus.contactStatus(userId: _1!, status: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .contactStatus(let userId, let status):
                        return "(contactStatus userId: \(userId), status: \(status))"
                }
            }
        }
    }

    public enum PhotoSize: CustomStringConvertible {
        case photoSizeEmpty(type: String)
        case photoSize(type: String, location: Api.FileLocation, w: Int32, h: Int32, size: Int32)
        case photoCachedSize(type: String, location: Api.FileLocation, w: Int32, h: Int32, bytes: Buffer)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .photoSizeEmpty(let type):
                    if boxed {
                        buffer.appendInt32(236446268)
                    }
                    serializeString(type, buffer: buffer, boxed: false)
                    break
                case .photoSize(let type, let location, let w, let h, let size):
                    if boxed {
                        buffer.appendInt32(2009052699)
                    }
                    serializeString(type, buffer: buffer, boxed: false)
                    let _ = location.serialize(buffer, true)
                    serializeInt32(w, buffer: buffer, boxed: false)
                    serializeInt32(h, buffer: buffer, boxed: false)
                    serializeInt32(size, buffer: buffer, boxed: false)
                    break
                case .photoCachedSize(let type, let location, let w, let h, let bytes):
                    if boxed {
                        buffer.appendInt32(-374917894)
                    }
                    serializeString(type, buffer: buffer, boxed: false)
                    let _ = location.serialize(buffer, true)
                    serializeInt32(w, buffer: buffer, boxed: false)
                    serializeInt32(h, buffer: buffer, boxed: false)
                    serializeBytes(bytes, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_photoSizeEmpty(_ reader: BufferReader) -> PhotoSize? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.PhotoSize.photoSizeEmpty(type: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_photoSize(_ reader: BufferReader) -> PhotoSize? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Api.FileLocation?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.FileLocation
            }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.PhotoSize.photoSize(type: _1!, location: _2!, w: _3!, h: _4!, size: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_photoCachedSize(_ reader: BufferReader) -> PhotoSize? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Api.FileLocation?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.FileLocation
            }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Buffer?
            _5 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.PhotoSize.photoCachedSize(type: _1!, location: _2!, w: _3!, h: _4!, bytes: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .photoSizeEmpty(let type):
                        return "(photoSizeEmpty type: \(type))"
                    case .photoSize(let type, let location, let w, let h, let size):
                        return "(photoSize type: \(type), location: \(location), w: \(w), h: \(h), size: \(size))"
                    case .photoCachedSize(let type, let location, let w, let h, let bytes):
                        return "(photoCachedSize type: \(type), location: \(location), w: \(w), h: \(h), bytes: \(bytes))"
                }
            }
        }
    }

    public enum GlobalPrivacySettings: CustomStringConvertible {
        case globalPrivacySettings(noSuggestions: Api.Bool, hideContacts: Api.Bool, hideLocated: Api.Bool, hideLastVisit: Api.Bool)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .globalPrivacySettings(let noSuggestions, let hideContacts, let hideLocated, let hideLastVisit):
                    if boxed {
                        buffer.appendInt32(1089848634)
                    }
                    let _ = noSuggestions.serialize(buffer, true)
                    let _ = hideContacts.serialize(buffer, true)
                    let _ = hideLocated.serialize(buffer, true)
                    let _ = hideLastVisit.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_globalPrivacySettings(_ reader: BufferReader) -> GlobalPrivacySettings? {
            var _1: Api.Bool?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _2: Api.Bool?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _3: Api.Bool?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _4: Api.Bool?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.GlobalPrivacySettings.globalPrivacySettings(noSuggestions: _1!, hideContacts: _2!, hideLocated: _3!, hideLastVisit: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .globalPrivacySettings(let noSuggestions, let hideContacts, let hideLocated, let hideLastVisit):
                        return "(globalPrivacySettings noSuggestions: \(noSuggestions), hideContacts: \(hideContacts), hideLocated: \(hideLocated), hideLastVisit: \(hideLastVisit))"
                }
            }
        }
    }

    public enum InlineBotSwitchPM: CustomStringConvertible {
        case inlineBotSwitchPM(text: String, startParam: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inlineBotSwitchPM(let text, let startParam):
                    if boxed {
                        buffer.appendInt32(1008755359)
                    }
                    serializeString(text, buffer: buffer, boxed: false)
                    serializeString(startParam, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inlineBotSwitchPM(_ reader: BufferReader) -> InlineBotSwitchPM? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InlineBotSwitchPM.inlineBotSwitchPM(text: _1!, startParam: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inlineBotSwitchPM(let text, let startParam):
                        return "(inlineBotSwitchPM text: \(text), startParam: \(startParam))"
                }
            }
        }
    }

    public enum FileLocation: CustomStringConvertible {
        case fileLocationUnavailable(volumeId: Int64, localId: Int32, secret: Int64)
        case fileLocation(dcId: Int32, volumeId: Int64, localId: Int32, secret: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .fileLocationUnavailable(let volumeId, let localId, let secret):
                    if boxed {
                        buffer.appendInt32(2086234950)
                    }
                    serializeInt64(volumeId, buffer: buffer, boxed: false)
                    serializeInt32(localId, buffer: buffer, boxed: false)
                    serializeInt64(secret, buffer: buffer, boxed: false)
                    break
                case .fileLocation(let dcId, let volumeId, let localId, let secret):
                    if boxed {
                        buffer.appendInt32(1406570614)
                    }
                    serializeInt32(dcId, buffer: buffer, boxed: false)
                    serializeInt64(volumeId, buffer: buffer, boxed: false)
                    serializeInt32(localId, buffer: buffer, boxed: false)
                    serializeInt64(secret, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_fileLocationUnavailable(_ reader: BufferReader) -> FileLocation? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int64?
            _3 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.FileLocation.fileLocationUnavailable(volumeId: _1!, localId: _2!, secret: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_fileLocation(_ reader: BufferReader) -> FileLocation? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int64?
            _4 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.FileLocation.fileLocation(dcId: _1!, volumeId: _2!, localId: _3!, secret: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .fileLocationUnavailable(let volumeId, let localId, let secret):
                        return "(fileLocationUnavailable volumeId: \(volumeId), localId: \(localId), secret: \(secret))"
                    case .fileLocation(let dcId, let volumeId, let localId, let secret):
                        return "(fileLocation dcId: \(dcId), volumeId: \(volumeId), localId: \(localId), secret: \(secret))"
                }
            }
        }
    }

    public enum InputNotifyPeer: CustomStringConvertible {
        case inputNotifyPeer(peer: Api.InputPeer)
        case inputNotifyUsers
        case inputNotifyChats
        case inputNotifyAll
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputNotifyPeer(let peer):
                    if boxed {
                        buffer.appendInt32(-1195615476)
                    }
                    let _ = peer.serialize(buffer, true)
                    break
                case .inputNotifyUsers:
                    if boxed {
                        buffer.appendInt32(423314455)
                    }
                    
                    break
                case .inputNotifyChats:
                    if boxed {
                        buffer.appendInt32(1251338318)
                    }
                    
                    break
                case .inputNotifyAll:
                    if boxed {
                        buffer.appendInt32(-1540769658)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_inputNotifyPeer(_ reader: BufferReader) -> InputNotifyPeer? {
            var _1: Api.InputPeer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputPeer
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputNotifyPeer.inputNotifyPeer(peer: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputNotifyUsers(_ reader: BufferReader) -> InputNotifyPeer? {
            return Api.InputNotifyPeer.inputNotifyUsers
        }
        private static func parse_inputNotifyChats(_ reader: BufferReader) -> InputNotifyPeer? {
            return Api.InputNotifyPeer.inputNotifyChats
        }
        private static func parse_inputNotifyAll(_ reader: BufferReader) -> InputNotifyPeer? {
            return Api.InputNotifyPeer.inputNotifyAll
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputNotifyPeer(let peer):
                        return "(inputNotifyPeer peer: \(peer))"
                    case .inputNotifyUsers:
                        return "(inputNotifyUsers)"
                    case .inputNotifyChats:
                        return "(inputNotifyChats)"
                    case .inputNotifyAll:
                        return "(inputNotifyAll)"
                }
            }
        }
    }

    public enum EncryptedMessage: CustomStringConvertible {
        case encryptedMessage(randomId: Int64, chatId: Int32, date: Int32, bytes: Buffer, file: Api.EncryptedFile)
        case encryptedMessageService(randomId: Int64, chatId: Int32, date: Int32, bytes: Buffer)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .encryptedMessage(let randomId, let chatId, let date, let bytes, let file):
                    if boxed {
                        buffer.appendInt32(-317144808)
                    }
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeBytes(bytes, buffer: buffer, boxed: false)
                    let _ = file.serialize(buffer, true)
                    break
                case .encryptedMessageService(let randomId, let chatId, let date, let bytes):
                    if boxed {
                        buffer.appendInt32(594758406)
                    }
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeBytes(bytes, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_encryptedMessage(_ reader: BufferReader) -> EncryptedMessage? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Buffer?
            _4 = parseBytes(reader)
            var _5: Api.EncryptedFile?
            if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.EncryptedFile
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.EncryptedMessage.encryptedMessage(randomId: _1!, chatId: _2!, date: _3!, bytes: _4!, file: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_encryptedMessageService(_ reader: BufferReader) -> EncryptedMessage? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Buffer?
            _4 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.EncryptedMessage.encryptedMessageService(randomId: _1!, chatId: _2!, date: _3!, bytes: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .encryptedMessage(let randomId, let chatId, let date, let bytes, let file):
                        return "(encryptedMessage randomId: \(randomId), chatId: \(chatId), date: \(date), bytes: \(bytes), file: \(file))"
                    case .encryptedMessageService(let randomId, let chatId, let date, let bytes):
                        return "(encryptedMessageService randomId: \(randomId), chatId: \(chatId), date: \(date), bytes: \(bytes))"
                }
            }
        }
    }

    public enum ChannelParticipantsFilter: CustomStringConvertible {
        case channelParticipantsRecent
        case channelParticipantsAdmins
        case channelParticipantsKicked
        case channelParticipantsBots
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .channelParticipantsRecent:
                    if boxed {
                        buffer.appendInt32(-566281095)
                    }
                    
                    break
                case .channelParticipantsAdmins:
                    if boxed {
                        buffer.appendInt32(-1268741783)
                    }
                    
                    break
                case .channelParticipantsKicked:
                    if boxed {
                        buffer.appendInt32(1010285434)
                    }
                    
                    break
                case .channelParticipantsBots:
                    if boxed {
                        buffer.appendInt32(-1328445861)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_channelParticipantsRecent(_ reader: BufferReader) -> ChannelParticipantsFilter? {
            return Api.ChannelParticipantsFilter.channelParticipantsRecent
        }
        private static func parse_channelParticipantsAdmins(_ reader: BufferReader) -> ChannelParticipantsFilter? {
            return Api.ChannelParticipantsFilter.channelParticipantsAdmins
        }
        private static func parse_channelParticipantsKicked(_ reader: BufferReader) -> ChannelParticipantsFilter? {
            return Api.ChannelParticipantsFilter.channelParticipantsKicked
        }
        private static func parse_channelParticipantsBots(_ reader: BufferReader) -> ChannelParticipantsFilter? {
            return Api.ChannelParticipantsFilter.channelParticipantsBots
        }
    
        public var description: String {
            get {
                switch self {
                    case .channelParticipantsRecent:
                        return "(channelParticipantsRecent)"
                    case .channelParticipantsAdmins:
                        return "(channelParticipantsAdmins)"
                    case .channelParticipantsKicked:
                        return "(channelParticipantsKicked)"
                    case .channelParticipantsBots:
                        return "(channelParticipantsBots)"
                }
            }
        }
    }

    public enum WebPage: CustomStringConvertible {
        case webPageEmpty(id: Int64)
        case webPagePending(id: Int64, date: Int32)
        case webPage(flags: Int32, id: Int64, url: String, displayUrl: String, type: String?, siteName: String?, title: String?, description: String?, photo: Api.Photo?, embedUrl: String?, embedType: String?, embedWidth: Int32?, embedHeight: Int32?, duration: Int32?, author: String?, document: Api.Document?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .webPageEmpty(let id):
                    if boxed {
                        buffer.appendInt32(-350980120)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    break
                case .webPagePending(let id, let date):
                    if boxed {
                        buffer.appendInt32(-981018084)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .webPage(let flags, let id, let url, let displayUrl, let type, let siteName, let title, let description, let photo, let embedUrl, let embedType, let embedWidth, let embedHeight, let duration, let author, let document):
                    if boxed {
                        buffer.appendInt32(-897446185)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeString(url, buffer: buffer, boxed: false)
                    serializeString(displayUrl, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeString(type!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(siteName!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(title!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeString(description!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 4) != 0 {let _ = photo!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeString(embedUrl!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeString(embedType!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 6) != 0 {serializeInt32(embedWidth!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 6) != 0 {serializeInt32(embedHeight!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 7) != 0 {serializeInt32(duration!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 8) != 0 {serializeString(author!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 9) != 0 {let _ = document!.serialize(buffer, true)}
                    break
    }
    return true
    }
    
        private static func parse_webPageEmpty(_ reader: BufferReader) -> WebPage? {
            var _1: Int64?
            _1 = reader.readInt64()
            let _c1 = _1 != nil
            if _c1 {
                return Api.WebPage.webPageEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_webPagePending(_ reader: BufferReader) -> WebPage? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.WebPage.webPagePending(id: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_webPage(_ reader: BufferReader) -> WebPage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            if Int(_1!) & Int(1 << 0) != 0 {_5 = parseString(reader) }
            var _6: String?
            if Int(_1!) & Int(1 << 1) != 0 {_6 = parseString(reader) }
            var _7: String?
            if Int(_1!) & Int(1 << 2) != 0 {_7 = parseString(reader) }
            var _8: String?
            if Int(_1!) & Int(1 << 3) != 0 {_8 = parseString(reader) }
            var _9: Api.Photo?
            if Int(_1!) & Int(1 << 4) != 0 {if let signature = reader.readInt32() {
                _9 = Api.parse(reader, signature: signature) as? Api.Photo
            } }
            var _10: String?
            if Int(_1!) & Int(1 << 5) != 0 {_10 = parseString(reader) }
            var _11: String?
            if Int(_1!) & Int(1 << 5) != 0 {_11 = parseString(reader) }
            var _12: Int32?
            if Int(_1!) & Int(1 << 6) != 0 {_12 = reader.readInt32() }
            var _13: Int32?
            if Int(_1!) & Int(1 << 6) != 0 {_13 = reader.readInt32() }
            var _14: Int32?
            if Int(_1!) & Int(1 << 7) != 0 {_14 = reader.readInt32() }
            var _15: String?
            if Int(_1!) & Int(1 << 8) != 0 {_15 = parseString(reader) }
            var _16: Api.Document?
            if Int(_1!) & Int(1 << 9) != 0 {if let signature = reader.readInt32() {
                _16 = Api.parse(reader, signature: signature) as? Api.Document
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 0) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 1) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 2) == 0) || _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 3) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 4) == 0) || _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 5) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 5) == 0) || _11 != nil
            let _c12 = (Int(_1!) & Int(1 << 6) == 0) || _12 != nil
            let _c13 = (Int(_1!) & Int(1 << 6) == 0) || _13 != nil
            let _c14 = (Int(_1!) & Int(1 << 7) == 0) || _14 != nil
            let _c15 = (Int(_1!) & Int(1 << 8) == 0) || _15 != nil
            let _c16 = (Int(_1!) & Int(1 << 9) == 0) || _16 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 && _c14 && _c15 && _c16 {
                return Api.WebPage.webPage(flags: _1!, id: _2!, url: _3!, displayUrl: _4!, type: _5, siteName: _6, title: _7, description: _8, photo: _9, embedUrl: _10, embedType: _11, embedWidth: _12, embedHeight: _13, duration: _14, author: _15, document: _16)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .webPageEmpty(let id):
                        return "(webPageEmpty id: \(id))"
                    case .webPagePending(let id, let date):
                        return "(webPagePending id: \(id), date: \(date))"
                    case .webPage(let flags, let id, let url, let displayUrl, let type, let siteName, let title, let description, let photo, let embedUrl, let embedType, let embedWidth, let embedHeight, let duration, let author, let document):
                        return "(webPage flags: \(flags), id: \(id), url: \(url), displayUrl: \(displayUrl), type: \(type), siteName: \(siteName), title: \(title), description: \(description), photo: \(photo), embedUrl: \(embedUrl), embedType: \(embedType), embedWidth: \(embedWidth), embedHeight: \(embedHeight), duration: \(duration), author: \(author), document: \(document))"
                }
            }
        }
    }

    public enum InputBotInlineMessage: CustomStringConvertible {
        case inputBotInlineMessageMediaAuto(flags: Int32, caption: String, replyMarkup: Api.ReplyMarkup?)
        case inputBotInlineMessageText(flags: Int32, message: String, entities: [Api.MessageEntity]?, replyMarkup: Api.ReplyMarkup?)
        case inputBotInlineMessageMediaGeo(flags: Int32, geoPoint: Api.InputGeoPoint, replyMarkup: Api.ReplyMarkup?)
        case inputBotInlineMessageMediaVenue(flags: Int32, geoPoint: Api.InputGeoPoint, title: String, address: String, provider: String, venueId: String, replyMarkup: Api.ReplyMarkup?)
        case inputBotInlineMessageMediaContact(flags: Int32, phoneNumber: String, firstName: String, lastName: String, replyMarkup: Api.ReplyMarkup?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputBotInlineMessageMediaAuto(let flags, let caption, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(691006739)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(caption, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .inputBotInlineMessageText(let flags, let message, let entities, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(1036876423)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .inputBotInlineMessageMediaGeo(let flags, let geoPoint, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(-190472735)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = geoPoint.serialize(buffer, true)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .inputBotInlineMessageMediaVenue(let flags, let geoPoint, let title, let address, let provider, let venueId, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(-1431327288)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = geoPoint.serialize(buffer, true)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeString(address, buffer: buffer, boxed: false)
                    serializeString(provider, buffer: buffer, boxed: false)
                    serializeString(venueId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .inputBotInlineMessageMediaContact(let flags, let phoneNumber, let firstName, let lastName, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(766443943)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
    }
    return true
    }
    
        private static func parse_inputBotInlineMessageMediaAuto(_ reader: BufferReader) -> InputBotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 2) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputBotInlineMessage.inputBotInlineMessageMediaAuto(flags: _1!, caption: _2!, replyMarkup: _3)
            }
            else {
                return nil
            }
        }
        private static func parse_inputBotInlineMessageText(_ reader: BufferReader) -> InputBotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 1) != 0 {if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            var _4: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 2) == 0) || _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.InputBotInlineMessage.inputBotInlineMessageText(flags: _1!, message: _2!, entities: _3, replyMarkup: _4)
            }
            else {
                return nil
            }
        }
        private static func parse_inputBotInlineMessageMediaGeo(_ reader: BufferReader) -> InputBotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.InputGeoPoint?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputGeoPoint
            }
            var _3: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 2) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputBotInlineMessage.inputBotInlineMessageMediaGeo(flags: _1!, geoPoint: _2!, replyMarkup: _3)
            }
            else {
                return nil
            }
        }
        private static func parse_inputBotInlineMessageMediaVenue(_ reader: BufferReader) -> InputBotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.InputGeoPoint?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputGeoPoint
            }
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            var _6: String?
            _6 = parseString(reader)
            var _7: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 2) == 0) || _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.InputBotInlineMessage.inputBotInlineMessageMediaVenue(flags: _1!, geoPoint: _2!, title: _3!, address: _4!, provider: _5!, venueId: _6!, replyMarkup: _7)
            }
            else {
                return nil
            }
        }
        private static func parse_inputBotInlineMessageMediaContact(_ reader: BufferReader) -> InputBotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputBotInlineMessage.inputBotInlineMessageMediaContact(flags: _1!, phoneNumber: _2!, firstName: _3!, lastName: _4!, replyMarkup: _5)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputBotInlineMessageMediaAuto(let flags, let caption, let replyMarkup):
                        return "(inputBotInlineMessageMediaAuto flags: \(flags), caption: \(caption), replyMarkup: \(replyMarkup))"
                    case .inputBotInlineMessageText(let flags, let message, let entities, let replyMarkup):
                        return "(inputBotInlineMessageText flags: \(flags), message: \(message), entities: \(entities), replyMarkup: \(replyMarkup))"
                    case .inputBotInlineMessageMediaGeo(let flags, let geoPoint, let replyMarkup):
                        return "(inputBotInlineMessageMediaGeo flags: \(flags), geoPoint: \(geoPoint), replyMarkup: \(replyMarkup))"
                    case .inputBotInlineMessageMediaVenue(let flags, let geoPoint, let title, let address, let provider, let venueId, let replyMarkup):
                        return "(inputBotInlineMessageMediaVenue flags: \(flags), geoPoint: \(geoPoint), title: \(title), address: \(address), provider: \(provider), venueId: \(venueId), replyMarkup: \(replyMarkup))"
                    case .inputBotInlineMessageMediaContact(let flags, let phoneNumber, let firstName, let lastName, let replyMarkup):
                        return "(inputBotInlineMessageMediaContact flags: \(flags), phoneNumber: \(phoneNumber), firstName: \(firstName), lastName: \(lastName), replyMarkup: \(replyMarkup))"
                }
            }
        }
    }

    public enum KeyboardButtonRow: CustomStringConvertible {
        case keyboardButtonRow(buttons: [Api.KeyboardButton])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .keyboardButtonRow(let buttons):
                    if boxed {
                        buffer.appendInt32(2002815875)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(buttons.count))
                    for item in buttons {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_keyboardButtonRow(_ reader: BufferReader) -> KeyboardButtonRow? {
            var _1: [Api.KeyboardButton]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.KeyboardButton.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.KeyboardButtonRow.keyboardButtonRow(buttons: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .keyboardButtonRow(let buttons):
                        return "(keyboardButtonRow buttons: \(buttons))"
                }
            }
        }
    }

    public enum StickerSet: CustomStringConvertible {
        case stickerSet(flags: Int32, id: Int64, accessHash: Int64, title: String, shortName: String, count: Int32, nHash: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .stickerSet(let flags, let id, let accessHash, let title, let shortName, let count, let nHash):
                    if boxed {
                        buffer.appendInt32(-852477119)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeString(shortName, buffer: buffer, boxed: false)
                    serializeInt32(count, buffer: buffer, boxed: false)
                    serializeInt32(nHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_stickerSet(_ reader: BufferReader) -> StickerSet? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int64?
            _3 = reader.readInt64()
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Int32?
            _7 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.StickerSet.stickerSet(flags: _1!, id: _2!, accessHash: _3!, title: _4!, shortName: _5!, count: _6!, nHash: _7!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .stickerSet(let flags, let id, let accessHash, let title, let shortName, let count, let nHash):
                        return "(stickerSet flags: \(flags), id: \(id), accessHash: \(accessHash), title: \(title), shortName: \(shortName), count: \(count), nHash: \(nHash))"
                }
            }
        }
    }

    public enum InputContact: CustomStringConvertible {
        case inputPhoneContact(clientId: Int64, phone: String, firstName: String, lastName: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPhoneContact(let clientId, let phone, let firstName, let lastName):
                    if boxed {
                        buffer.appendInt32(-208488460)
                    }
                    serializeInt64(clientId, buffer: buffer, boxed: false)
                    serializeString(phone, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputPhoneContact(_ reader: BufferReader) -> InputContact? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.InputContact.inputPhoneContact(clientId: _1!, phone: _2!, firstName: _3!, lastName: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPhoneContact(let clientId, let phone, let firstName, let lastName):
                        return "(inputPhoneContact clientId: \(clientId), phone: \(phone), firstName: \(firstName), lastName: \(lastName))"
                }
            }
        }
    }

    public enum TopPeerCategory: CustomStringConvertible {
        case topPeerCategoryBotsPM
        case topPeerCategoryBotsInline
        case topPeerCategoryCorrespondents
        case topPeerCategoryGroups
        case topPeerCategoryChannels
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .topPeerCategoryBotsPM:
                    if boxed {
                        buffer.appendInt32(-1419371685)
                    }
                    
                    break
                case .topPeerCategoryBotsInline:
                    if boxed {
                        buffer.appendInt32(344356834)
                    }
                    
                    break
                case .topPeerCategoryCorrespondents:
                    if boxed {
                        buffer.appendInt32(104314861)
                    }
                    
                    break
                case .topPeerCategoryGroups:
                    if boxed {
                        buffer.appendInt32(-1122524854)
                    }
                    
                    break
                case .topPeerCategoryChannels:
                    if boxed {
                        buffer.appendInt32(371037736)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_topPeerCategoryBotsPM(_ reader: BufferReader) -> TopPeerCategory? {
            return Api.TopPeerCategory.topPeerCategoryBotsPM
        }
        private static func parse_topPeerCategoryBotsInline(_ reader: BufferReader) -> TopPeerCategory? {
            return Api.TopPeerCategory.topPeerCategoryBotsInline
        }
        private static func parse_topPeerCategoryCorrespondents(_ reader: BufferReader) -> TopPeerCategory? {
            return Api.TopPeerCategory.topPeerCategoryCorrespondents
        }
        private static func parse_topPeerCategoryGroups(_ reader: BufferReader) -> TopPeerCategory? {
            return Api.TopPeerCategory.topPeerCategoryGroups
        }
        private static func parse_topPeerCategoryChannels(_ reader: BufferReader) -> TopPeerCategory? {
            return Api.TopPeerCategory.topPeerCategoryChannels
        }
    
        public var description: String {
            get {
                switch self {
                    case .topPeerCategoryBotsPM:
                        return "(topPeerCategoryBotsPM)"
                    case .topPeerCategoryBotsInline:
                        return "(topPeerCategoryBotsInline)"
                    case .topPeerCategoryCorrespondents:
                        return "(topPeerCategoryCorrespondents)"
                    case .topPeerCategoryGroups:
                        return "(topPeerCategoryGroups)"
                    case .topPeerCategoryChannels:
                        return "(topPeerCategoryChannels)"
                }
            }
        }
    }

    public enum ChannelMessagesFilter: CustomStringConvertible {
        case channelMessagesFilterEmpty
        case channelMessagesFilter(flags: Int32, ranges: [Api.MessageRange])
        case channelMessagesFilterCollapsed
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .channelMessagesFilterEmpty:
                    if boxed {
                        buffer.appendInt32(-1798033689)
                    }
                    
                    break
                case .channelMessagesFilter(let flags, let ranges):
                    if boxed {
                        buffer.appendInt32(-847783593)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(ranges.count))
                    for item in ranges {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .channelMessagesFilterCollapsed:
                    if boxed {
                        buffer.appendInt32(-100588754)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_channelMessagesFilterEmpty(_ reader: BufferReader) -> ChannelMessagesFilter? {
            return Api.ChannelMessagesFilter.channelMessagesFilterEmpty
        }
        private static func parse_channelMessagesFilter(_ reader: BufferReader) -> ChannelMessagesFilter? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.MessageRange]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageRange.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ChannelMessagesFilter.channelMessagesFilter(flags: _1!, ranges: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_channelMessagesFilterCollapsed(_ reader: BufferReader) -> ChannelMessagesFilter? {
            return Api.ChannelMessagesFilter.channelMessagesFilterCollapsed
        }
    
        public var description: String {
            get {
                switch self {
                    case .channelMessagesFilterEmpty:
                        return "(channelMessagesFilterEmpty)"
                    case .channelMessagesFilter(let flags, let ranges):
                        return "(channelMessagesFilter flags: \(flags), ranges: \(ranges))"
                    case .channelMessagesFilterCollapsed:
                        return "(channelMessagesFilterCollapsed)"
                }
            }
        }
    }

    public enum InputDocument: CustomStringConvertible {
        case inputDocumentEmpty
        case inputDocument(id: Int64, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputDocumentEmpty:
                    if boxed {
                        buffer.appendInt32(1928391342)
                    }
                    
                    break
                case .inputDocument(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(410618194)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputDocumentEmpty(_ reader: BufferReader) -> InputDocument? {
            return Api.InputDocument.inputDocumentEmpty
        }
        private static func parse_inputDocument(_ reader: BufferReader) -> InputDocument? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputDocument.inputDocument(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputDocumentEmpty:
                        return "(inputDocumentEmpty)"
                    case .inputDocument(let id, let accessHash):
                        return "(inputDocument id: \(id), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum InputMedia: CustomStringConvertible {
        case inputMediaEmpty
        case inputMediaGeoPoint(geoPoint: Api.InputGeoPoint)
        case inputMediaContact(phoneNumber: String, firstName: String, lastName: String)
        case inputMediaUploadedPhoto(file: Api.InputFile, caption: String)
        case inputMediaPhoto(id: Api.InputPhoto, caption: String)
        case inputMediaVenue(geoPoint: Api.InputGeoPoint, title: String, address: String, provider: String, venueId: String)
        case inputMediaGifExternal(url: String, q: String)
        case inputMediaUploadedDocument(file: Api.InputFile, mimeType: String, attributes: [Api.DocumentAttribute], caption: String)
        case inputMediaUploadedThumbDocument(file: Api.InputFile, thumb: Api.InputFile, mimeType: String, attributes: [Api.DocumentAttribute], caption: String)
        case inputMediaDocument(id: Api.InputDocument, caption: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputMediaEmpty:
                    if boxed {
                        buffer.appendInt32(-1771768449)
                    }
                    
                    break
                case .inputMediaGeoPoint(let geoPoint):
                    if boxed {
                        buffer.appendInt32(-104578748)
                    }
                    let _ = geoPoint.serialize(buffer, true)
                    break
                case .inputMediaContact(let phoneNumber, let firstName, let lastName):
                    if boxed {
                        buffer.appendInt32(-1494984313)
                    }
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    break
                case .inputMediaUploadedPhoto(let file, let caption):
                    if boxed {
                        buffer.appendInt32(-139464256)
                    }
                    let _ = file.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
                case .inputMediaPhoto(let id, let caption):
                    if boxed {
                        buffer.appendInt32(-373312269)
                    }
                    let _ = id.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
                case .inputMediaVenue(let geoPoint, let title, let address, let provider, let venueId):
                    if boxed {
                        buffer.appendInt32(673687578)
                    }
                    let _ = geoPoint.serialize(buffer, true)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeString(address, buffer: buffer, boxed: false)
                    serializeString(provider, buffer: buffer, boxed: false)
                    serializeString(venueId, buffer: buffer, boxed: false)
                    break
                case .inputMediaGifExternal(let url, let q):
                    if boxed {
                        buffer.appendInt32(1212395773)
                    }
                    serializeString(url, buffer: buffer, boxed: false)
                    serializeString(q, buffer: buffer, boxed: false)
                    break
                case .inputMediaUploadedDocument(let file, let mimeType, let attributes, let caption):
                    if boxed {
                        buffer.appendInt32(495530093)
                    }
                    let _ = file.serialize(buffer, true)
                    serializeString(mimeType, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(attributes.count))
                    for item in attributes {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
                case .inputMediaUploadedThumbDocument(let file, let thumb, let mimeType, let attributes, let caption):
                    if boxed {
                        buffer.appendInt32(-1386138479)
                    }
                    let _ = file.serialize(buffer, true)
                    let _ = thumb.serialize(buffer, true)
                    serializeString(mimeType, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(attributes.count))
                    for item in attributes {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
                case .inputMediaDocument(let id, let caption):
                    if boxed {
                        buffer.appendInt32(444068508)
                    }
                    let _ = id.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputMediaEmpty(_ reader: BufferReader) -> InputMedia? {
            return Api.InputMedia.inputMediaEmpty
        }
        private static func parse_inputMediaGeoPoint(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputGeoPoint?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputGeoPoint
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputMedia.inputMediaGeoPoint(geoPoint: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaContact(_ reader: BufferReader) -> InputMedia? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputMedia.inputMediaContact(phoneNumber: _1!, firstName: _2!, lastName: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaUploadedPhoto(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputFile?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputFile
            }
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputMedia.inputMediaUploadedPhoto(file: _1!, caption: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaPhoto(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputPhoto?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputPhoto
            }
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputMedia.inputMediaPhoto(id: _1!, caption: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaVenue(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputGeoPoint?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputGeoPoint
            }
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputMedia.inputMediaVenue(geoPoint: _1!, title: _2!, address: _3!, provider: _4!, venueId: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaGifExternal(_ reader: BufferReader) -> InputMedia? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputMedia.inputMediaGifExternal(url: _1!, q: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaUploadedDocument(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputFile?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputFile
            }
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.DocumentAttribute]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.DocumentAttribute.self)
            }
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.InputMedia.inputMediaUploadedDocument(file: _1!, mimeType: _2!, attributes: _3!, caption: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaUploadedThumbDocument(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputFile?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputFile
            }
            var _2: Api.InputFile?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputFile
            }
            var _3: String?
            _3 = parseString(reader)
            var _4: [Api.DocumentAttribute]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.DocumentAttribute.self)
            }
            var _5: String?
            _5 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputMedia.inputMediaUploadedThumbDocument(file: _1!, thumb: _2!, mimeType: _3!, attributes: _4!, caption: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMediaDocument(_ reader: BufferReader) -> InputMedia? {
            var _1: Api.InputDocument?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputDocument
            }
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputMedia.inputMediaDocument(id: _1!, caption: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputMediaEmpty:
                        return "(inputMediaEmpty)"
                    case .inputMediaGeoPoint(let geoPoint):
                        return "(inputMediaGeoPoint geoPoint: \(geoPoint))"
                    case .inputMediaContact(let phoneNumber, let firstName, let lastName):
                        return "(inputMediaContact phoneNumber: \(phoneNumber), firstName: \(firstName), lastName: \(lastName))"
                    case .inputMediaUploadedPhoto(let file, let caption):
                        return "(inputMediaUploadedPhoto file: \(file), caption: \(caption))"
                    case .inputMediaPhoto(let id, let caption):
                        return "(inputMediaPhoto id: \(id), caption: \(caption))"
                    case .inputMediaVenue(let geoPoint, let title, let address, let provider, let venueId):
                        return "(inputMediaVenue geoPoint: \(geoPoint), title: \(title), address: \(address), provider: \(provider), venueId: \(venueId))"
                    case .inputMediaGifExternal(let url, let q):
                        return "(inputMediaGifExternal url: \(url), q: \(q))"
                    case .inputMediaUploadedDocument(let file, let mimeType, let attributes, let caption):
                        return "(inputMediaUploadedDocument file: \(file), mimeType: \(mimeType), attributes: \(attributes), caption: \(caption))"
                    case .inputMediaUploadedThumbDocument(let file, let thumb, let mimeType, let attributes, let caption):
                        return "(inputMediaUploadedThumbDocument file: \(file), thumb: \(thumb), mimeType: \(mimeType), attributes: \(attributes), caption: \(caption))"
                    case .inputMediaDocument(let id, let caption):
                        return "(inputMediaDocument id: \(id), caption: \(caption))"
                }
            }
        }
    }

    public enum InputPeer: CustomStringConvertible {
        case inputPeerEmpty
        case inputPeerSelf
        case inputPeerChat(chatId: Int32)
        case inputPeerUser(userId: Int32, accessHash: Int64)
        case inputPeerChannel(channelId: Int32, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPeerEmpty:
                    if boxed {
                        buffer.appendInt32(2134579434)
                    }
                    
                    break
                case .inputPeerSelf:
                    if boxed {
                        buffer.appendInt32(2107670217)
                    }
                    
                    break
                case .inputPeerChat(let chatId):
                    if boxed {
                        buffer.appendInt32(396093539)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    break
                case .inputPeerUser(let userId, let accessHash):
                    if boxed {
                        buffer.appendInt32(2072935910)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
                case .inputPeerChannel(let channelId, let accessHash):
                    if boxed {
                        buffer.appendInt32(548253432)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputPeerEmpty(_ reader: BufferReader) -> InputPeer? {
            return Api.InputPeer.inputPeerEmpty
        }
        private static func parse_inputPeerSelf(_ reader: BufferReader) -> InputPeer? {
            return Api.InputPeer.inputPeerSelf
        }
        private static func parse_inputPeerChat(_ reader: BufferReader) -> InputPeer? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPeer.inputPeerChat(chatId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputPeerUser(_ reader: BufferReader) -> InputPeer? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputPeer.inputPeerUser(userId: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputPeerChannel(_ reader: BufferReader) -> InputPeer? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputPeer.inputPeerChannel(channelId: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPeerEmpty:
                        return "(inputPeerEmpty)"
                    case .inputPeerSelf:
                        return "(inputPeerSelf)"
                    case .inputPeerChat(let chatId):
                        return "(inputPeerChat chatId: \(chatId))"
                    case .inputPeerUser(let userId, let accessHash):
                        return "(inputPeerUser userId: \(userId), accessHash: \(accessHash))"
                    case .inputPeerChannel(let channelId, let accessHash):
                        return "(inputPeerChannel channelId: \(channelId), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum Contact: CustomStringConvertible {
        case contact(userId: Int32, mutual: Api.Bool)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contact(let userId, let mutual):
                    if boxed {
                        buffer.appendInt32(-116274796)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    let _ = mutual.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_contact(_ reader: BufferReader) -> Contact? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.Bool?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Contact.contact(userId: _1!, mutual: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .contact(let userId, let mutual):
                        return "(contact userId: \(userId), mutual: \(mutual))"
                }
            }
        }
    }

    public enum BotInlineResult: CustomStringConvertible {
        case botInlineResult(flags: Int32, id: String, type: String, title: String?, description: String?, url: String?, thumbUrl: String?, contentUrl: String?, contentType: String?, w: Int32?, h: Int32?, duration: Int32?, sendMessage: Api.BotInlineMessage)
        case botInlineMediaResult(flags: Int32, id: String, type: String, photo: Api.Photo?, document: Api.Document?, title: String?, description: String?, sendMessage: Api.BotInlineMessage)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .botInlineResult(let flags, let id, let type, let title, let description, let url, let thumbUrl, let contentUrl, let contentType, let w, let h, let duration, let sendMessage):
                    if boxed {
                        buffer.appendInt32(-1679053127)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(id, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(title!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(description!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeString(url!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 4) != 0 {serializeString(thumbUrl!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeString(contentUrl!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeString(contentType!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 6) != 0 {serializeInt32(w!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 6) != 0 {serializeInt32(h!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 7) != 0 {serializeInt32(duration!, buffer: buffer, boxed: false)}
                    let _ = sendMessage.serialize(buffer, true)
                    break
                case .botInlineMediaResult(let flags, let id, let type, let photo, let document, let title, let description, let sendMessage):
                    if boxed {
                        buffer.appendInt32(400266251)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(id, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = photo!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 1) != 0 {let _ = document!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(title!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeString(description!, buffer: buffer, boxed: false)}
                    let _ = sendMessage.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_botInlineResult(_ reader: BufferReader) -> BotInlineResult? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = parseString(reader) }
            var _5: String?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = parseString(reader) }
            var _6: String?
            if Int(_1!) & Int(1 << 3) != 0 {_6 = parseString(reader) }
            var _7: String?
            if Int(_1!) & Int(1 << 4) != 0 {_7 = parseString(reader) }
            var _8: String?
            if Int(_1!) & Int(1 << 5) != 0 {_8 = parseString(reader) }
            var _9: String?
            if Int(_1!) & Int(1 << 5) != 0 {_9 = parseString(reader) }
            var _10: Int32?
            if Int(_1!) & Int(1 << 6) != 0 {_10 = reader.readInt32() }
            var _11: Int32?
            if Int(_1!) & Int(1 << 6) != 0 {_11 = reader.readInt32() }
            var _12: Int32?
            if Int(_1!) & Int(1 << 7) != 0 {_12 = reader.readInt32() }
            var _13: Api.BotInlineMessage?
            if let signature = reader.readInt32() {
                _13 = Api.parse(reader, signature: signature) as? Api.BotInlineMessage
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 3) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 4) == 0) || _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 5) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 5) == 0) || _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 6) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 6) == 0) || _11 != nil
            let _c12 = (Int(_1!) & Int(1 << 7) == 0) || _12 != nil
            let _c13 = _13 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 {
                return Api.BotInlineResult.botInlineResult(flags: _1!, id: _2!, type: _3!, title: _4, description: _5, url: _6, thumbUrl: _7, contentUrl: _8, contentType: _9, w: _10, h: _11, duration: _12, sendMessage: _13!)
            }
            else {
                return nil
            }
        }
        private static func parse_botInlineMediaResult(_ reader: BufferReader) -> BotInlineResult? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: Api.Photo?
            if Int(_1!) & Int(1 << 0) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.Photo
            } }
            var _5: Api.Document?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.Document
            } }
            var _6: String?
            if Int(_1!) & Int(1 << 2) != 0 {_6 = parseString(reader) }
            var _7: String?
            if Int(_1!) & Int(1 << 3) != 0 {_7 = parseString(reader) }
            var _8: Api.BotInlineMessage?
            if let signature = reader.readInt32() {
                _8 = Api.parse(reader, signature: signature) as? Api.BotInlineMessage
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 0) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 1) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 2) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 3) == 0) || _7 != nil
            let _c8 = _8 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 {
                return Api.BotInlineResult.botInlineMediaResult(flags: _1!, id: _2!, type: _3!, photo: _4, document: _5, title: _6, description: _7, sendMessage: _8!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .botInlineResult(let flags, let id, let type, let title, let description, let url, let thumbUrl, let contentUrl, let contentType, let w, let h, let duration, let sendMessage):
                        return "(botInlineResult flags: \(flags), id: \(id), type: \(type), title: \(title), description: \(description), url: \(url), thumbUrl: \(thumbUrl), contentUrl: \(contentUrl), contentType: \(contentType), w: \(w), h: \(h), duration: \(duration), sendMessage: \(sendMessage))"
                    case .botInlineMediaResult(let flags, let id, let type, let photo, let document, let title, let description, let sendMessage):
                        return "(botInlineMediaResult flags: \(flags), id: \(id), type: \(type), photo: \(photo), document: \(document), title: \(title), description: \(description), sendMessage: \(sendMessage))"
                }
            }
        }
    }

    public enum InputPrivacyRule: CustomStringConvertible {
        case inputPrivacyValueAllowContacts
        case inputPrivacyValueAllowAll
        case inputPrivacyValueAllowUsers(users: [Api.InputUser])
        case inputPrivacyValueDisallowContacts
        case inputPrivacyValueDisallowAll
        case inputPrivacyValueDisallowUsers(users: [Api.InputUser])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPrivacyValueAllowContacts:
                    if boxed {
                        buffer.appendInt32(218751099)
                    }
                    
                    break
                case .inputPrivacyValueAllowAll:
                    if boxed {
                        buffer.appendInt32(407582158)
                    }
                    
                    break
                case .inputPrivacyValueAllowUsers(let users):
                    if boxed {
                        buffer.appendInt32(320652927)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .inputPrivacyValueDisallowContacts:
                    if boxed {
                        buffer.appendInt32(195371015)
                    }
                    
                    break
                case .inputPrivacyValueDisallowAll:
                    if boxed {
                        buffer.appendInt32(-697604407)
                    }
                    
                    break
                case .inputPrivacyValueDisallowUsers(let users):
                    if boxed {
                        buffer.appendInt32(-1877932953)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_inputPrivacyValueAllowContacts(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueAllowContacts
        }
        private static func parse_inputPrivacyValueAllowAll(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueAllowAll
        }
        private static func parse_inputPrivacyValueAllowUsers(_ reader: BufferReader) -> InputPrivacyRule? {
            var _1: [Api.InputUser]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.InputUser.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPrivacyRule.inputPrivacyValueAllowUsers(users: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputPrivacyValueDisallowContacts(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueDisallowContacts
        }
        private static func parse_inputPrivacyValueDisallowAll(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueDisallowAll
        }
        private static func parse_inputPrivacyValueDisallowUsers(_ reader: BufferReader) -> InputPrivacyRule? {
            var _1: [Api.InputUser]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.InputUser.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPrivacyRule.inputPrivacyValueDisallowUsers(users: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPrivacyValueAllowContacts:
                        return "(inputPrivacyValueAllowContacts)"
                    case .inputPrivacyValueAllowAll:
                        return "(inputPrivacyValueAllowAll)"
                    case .inputPrivacyValueAllowUsers(let users):
                        return "(inputPrivacyValueAllowUsers users: \(users))"
                    case .inputPrivacyValueDisallowContacts:
                        return "(inputPrivacyValueDisallowContacts)"
                    case .inputPrivacyValueDisallowAll:
                        return "(inputPrivacyValueDisallowAll)"
                    case .inputPrivacyValueDisallowUsers(let users):
                        return "(inputPrivacyValueDisallowUsers users: \(users))"
                }
            }
        }
    }

    public enum ContactRequest: CustomStringConvertible {
        case contactRequest(userId: Int32, date: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contactRequest(let userId, let date):
                    if boxed {
                        buffer.appendInt32(1509048852)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_contactRequest(_ reader: BufferReader) -> ContactRequest? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ContactRequest.contactRequest(userId: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .contactRequest(let userId, let date):
                        return "(contactRequest userId: \(userId), date: \(date))"
                }
            }
        }
    }

    public enum InputEncryptedChat: CustomStringConvertible {
        case inputEncryptedChat(chatId: Int32, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputEncryptedChat(let chatId, let accessHash):
                    if boxed {
                        buffer.appendInt32(-247351839)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputEncryptedChat(_ reader: BufferReader) -> InputEncryptedChat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputEncryptedChat.inputEncryptedChat(chatId: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputEncryptedChat(let chatId, let accessHash):
                        return "(inputEncryptedChat chatId: \(chatId), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum DraftMessage: CustomStringConvertible {
        case draftMessageEmpty
        case draftMessage(flags: Int32, replyToMsgId: Int32?, message: String, entities: [Api.MessageEntity]?, date: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .draftMessageEmpty:
                    if boxed {
                        buffer.appendInt32(-1169445179)
                    }
                    
                    break
                case .draftMessage(let flags, let replyToMsgId, let message, let entities, let date):
                    if boxed {
                        buffer.appendInt32(-40996577)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_draftMessageEmpty(_ reader: BufferReader) -> DraftMessage? {
            return Api.DraftMessage.draftMessageEmpty
        }
        private static func parse_draftMessage(_ reader: BufferReader) -> DraftMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_2 = reader.readInt32() }
            var _3: String?
            _3 = parseString(reader)
            var _4: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 3) != 0 {if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = (Int(_1!) & Int(1 << 0) == 0) || _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 3) == 0) || _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.DraftMessage.draftMessage(flags: _1!, replyToMsgId: _2, message: _3!, entities: _4, date: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .draftMessageEmpty:
                        return "(draftMessageEmpty)"
                    case .draftMessage(let flags, let replyToMsgId, let message, let entities, let date):
                        return "(draftMessage flags: \(flags), replyToMsgId: \(replyToMsgId), message: \(message), entities: \(entities), date: \(date))"
                }
            }
        }
    }

    public enum DisabledFeature: CustomStringConvertible {
        case disabledFeature(feature: String, nDescription: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .disabledFeature(let feature, let nDescription):
                    if boxed {
                        buffer.appendInt32(-1369215196)
                    }
                    serializeString(feature, buffer: buffer, boxed: false)
                    serializeString(nDescription, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_disabledFeature(_ reader: BufferReader) -> DisabledFeature? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.DisabledFeature.disabledFeature(feature: _1!, nDescription: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .disabledFeature(let feature, let nDescription):
                        return "(disabledFeature feature: \(feature), nDescription: \(nDescription))"
                }
            }
        }
    }

    public enum EncryptedFile: CustomStringConvertible {
        case encryptedFileEmpty
        case encryptedFile(id: Int64, accessHash: Int64, size: Int32, dcId: Int32, keyFingerprint: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .encryptedFileEmpty:
                    if boxed {
                        buffer.appendInt32(-1038136962)
                    }
                    
                    break
                case .encryptedFile(let id, let accessHash, let size, let dcId, let keyFingerprint):
                    if boxed {
                        buffer.appendInt32(1248893260)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(size, buffer: buffer, boxed: false)
                    serializeInt32(dcId, buffer: buffer, boxed: false)
                    serializeInt32(keyFingerprint, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_encryptedFileEmpty(_ reader: BufferReader) -> EncryptedFile? {
            return Api.EncryptedFile.encryptedFileEmpty
        }
        private static func parse_encryptedFile(_ reader: BufferReader) -> EncryptedFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.EncryptedFile.encryptedFile(id: _1!, accessHash: _2!, size: _3!, dcId: _4!, keyFingerprint: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .encryptedFileEmpty:
                        return "(encryptedFileEmpty)"
                    case .encryptedFile(let id, let accessHash, let size, let dcId, let keyFingerprint):
                        return "(encryptedFile id: \(id), accessHash: \(accessHash), size: \(size), dcId: \(dcId), keyFingerprint: \(keyFingerprint))"
                }
            }
        }
    }

    public enum NotifyPeer: CustomStringConvertible {
        case notifyPeer(peer: Api.Peer)
        case notifyUsers
        case notifyChats
        case notifyAll
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .notifyPeer(let peer):
                    if boxed {
                        buffer.appendInt32(-1613493288)
                    }
                    let _ = peer.serialize(buffer, true)
                    break
                case .notifyUsers:
                    if boxed {
                        buffer.appendInt32(-1261946036)
                    }
                    
                    break
                case .notifyChats:
                    if boxed {
                        buffer.appendInt32(-1073230141)
                    }
                    
                    break
                case .notifyAll:
                    if boxed {
                        buffer.appendInt32(1959820384)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_notifyPeer(_ reader: BufferReader) -> NotifyPeer? {
            var _1: Api.Peer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.NotifyPeer.notifyPeer(peer: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_notifyUsers(_ reader: BufferReader) -> NotifyPeer? {
            return Api.NotifyPeer.notifyUsers
        }
        private static func parse_notifyChats(_ reader: BufferReader) -> NotifyPeer? {
            return Api.NotifyPeer.notifyChats
        }
        private static func parse_notifyAll(_ reader: BufferReader) -> NotifyPeer? {
            return Api.NotifyPeer.notifyAll
        }
    
        public var description: String {
            get {
                switch self {
                    case .notifyPeer(let peer):
                        return "(notifyPeer peer: \(peer))"
                    case .notifyUsers:
                        return "(notifyUsers)"
                    case .notifyChats:
                        return "(notifyChats)"
                    case .notifyAll:
                        return "(notifyAll)"
                }
            }
        }
    }

    public enum InputPrivacyKey: CustomStringConvertible {
        case inputPrivacyKeyStatusTimestamp
        case inputPrivacyKeyChatInvite
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPrivacyKeyStatusTimestamp:
                    if boxed {
                        buffer.appendInt32(1335282456)
                    }
                    
                    break
                case .inputPrivacyKeyChatInvite:
                    if boxed {
                        buffer.appendInt32(-1107622874)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_inputPrivacyKeyStatusTimestamp(_ reader: BufferReader) -> InputPrivacyKey? {
            return Api.InputPrivacyKey.inputPrivacyKeyStatusTimestamp
        }
        private static func parse_inputPrivacyKeyChatInvite(_ reader: BufferReader) -> InputPrivacyKey? {
            return Api.InputPrivacyKey.inputPrivacyKeyChatInvite
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPrivacyKeyStatusTimestamp:
                        return "(inputPrivacyKeyStatusTimestamp)"
                    case .inputPrivacyKeyChatInvite:
                        return "(inputPrivacyKeyChatInvite)"
                }
            }
        }
    }

    public enum ReplyMarkup: CustomStringConvertible {
        case replyKeyboardHide(flags: Int32)
        case replyKeyboardForceReply(flags: Int32)
        case replyKeyboardMarkup(flags: Int32, rows: [Api.KeyboardButtonRow])
        case replyInlineMarkup(rows: [Api.KeyboardButtonRow])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .replyKeyboardHide(let flags):
                    if boxed {
                        buffer.appendInt32(-1606526075)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    break
                case .replyKeyboardForceReply(let flags):
                    if boxed {
                        buffer.appendInt32(-200242528)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    break
                case .replyKeyboardMarkup(let flags, let rows):
                    if boxed {
                        buffer.appendInt32(889353612)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(rows.count))
                    for item in rows {
                        let _ = item.serialize(buffer, true)
                    }
                    break
                case .replyInlineMarkup(let rows):
                    if boxed {
                        buffer.appendInt32(1218642516)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(rows.count))
                    for item in rows {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_replyKeyboardHide(_ reader: BufferReader) -> ReplyMarkup? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.ReplyMarkup.replyKeyboardHide(flags: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_replyKeyboardForceReply(_ reader: BufferReader) -> ReplyMarkup? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.ReplyMarkup.replyKeyboardForceReply(flags: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_replyKeyboardMarkup(_ reader: BufferReader) -> ReplyMarkup? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.KeyboardButtonRow]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.KeyboardButtonRow.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ReplyMarkup.replyKeyboardMarkup(flags: _1!, rows: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_replyInlineMarkup(_ reader: BufferReader) -> ReplyMarkup? {
            var _1: [Api.KeyboardButtonRow]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.KeyboardButtonRow.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.ReplyMarkup.replyInlineMarkup(rows: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .replyKeyboardHide(let flags):
                        return "(replyKeyboardHide flags: \(flags))"
                    case .replyKeyboardForceReply(let flags):
                        return "(replyKeyboardForceReply flags: \(flags))"
                    case .replyKeyboardMarkup(let flags, let rows):
                        return "(replyKeyboardMarkup flags: \(flags), rows: \(rows))"
                    case .replyInlineMarkup(let rows):
                        return "(replyInlineMarkup rows: \(rows))"
                }
            }
        }
    }

    public enum TopPeer: CustomStringConvertible {
        case topPeer(peer: Api.Peer, rating: Double)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .topPeer(let peer, let rating):
                    if boxed {
                        buffer.appendInt32(-305282981)
                    }
                    let _ = peer.serialize(buffer, true)
                    serializeDouble(rating, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_topPeer(_ reader: BufferReader) -> TopPeer? {
            var _1: Api.Peer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _2: Double?
            _2 = reader.readDouble()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.TopPeer.topPeer(peer: _1!, rating: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .topPeer(let peer, let rating):
                        return "(topPeer peer: \(peer), rating: \(rating))"
                }
            }
        }
    }

    public enum ContactBlocked: CustomStringConvertible {
        case contactBlocked(userId: Int32, date: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contactBlocked(let userId, let date):
                    if boxed {
                        buffer.appendInt32(1444661369)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_contactBlocked(_ reader: BufferReader) -> ContactBlocked? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ContactBlocked.contactBlocked(userId: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .contactBlocked(let userId, let date):
                        return "(contactBlocked userId: \(userId), date: \(date))"
                }
            }
        }
    }

    public enum InputUser: CustomStringConvertible {
        case inputUserEmpty
        case inputUserSelf
        case inputUser(userId: Int32, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputUserEmpty:
                    if boxed {
                        buffer.appendInt32(-1182234929)
                    }
                    
                    break
                case .inputUserSelf:
                    if boxed {
                        buffer.appendInt32(-138301121)
                    }
                    
                    break
                case .inputUser(let userId, let accessHash):
                    if boxed {
                        buffer.appendInt32(-668391402)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputUserEmpty(_ reader: BufferReader) -> InputUser? {
            return Api.InputUser.inputUserEmpty
        }
        private static func parse_inputUserSelf(_ reader: BufferReader) -> InputUser? {
            return Api.InputUser.inputUserSelf
        }
        private static func parse_inputUser(_ reader: BufferReader) -> InputUser? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputUser.inputUser(userId: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputUserEmpty:
                        return "(inputUserEmpty)"
                    case .inputUserSelf:
                        return "(inputUserSelf)"
                    case .inputUser(let userId, let accessHash):
                        return "(inputUser userId: \(userId), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum SchemeType: CustomStringConvertible {
        case schemeType(id: Int32, predicate: String, params: [Api.SchemeParam], type: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .schemeType(let id, let predicate, let params, let type):
                    if boxed {
                        buffer.appendInt32(-1461589623)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(predicate, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(params.count))
                    for item in params {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeString(type, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_schemeType(_ reader: BufferReader) -> SchemeType? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.SchemeParam]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SchemeParam.self)
            }
            var _4: String?
            _4 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.SchemeType.schemeType(id: _1!, predicate: _2!, params: _3!, type: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .schemeType(let id, let predicate, let params, let type):
                        return "(schemeType id: \(id), predicate: \(predicate), params: \(params), type: \(type))"
                }
            }
        }
    }

    public enum MessageRange: CustomStringConvertible {
        case messageRange(minId: Int32, maxId: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageRange(let minId, let maxId):
                    if boxed {
                        buffer.appendInt32(182649427)
                    }
                    serializeInt32(minId, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_messageRange(_ reader: BufferReader) -> MessageRange? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageRange.messageRange(minId: _1!, maxId: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageRange(let minId, let maxId):
                        return "(messageRange minId: \(minId), maxId: \(maxId))"
                }
            }
        }
    }

    public enum Config: CustomStringConvertible {
        case config(date: Int32, expires: Int32, testMode: Api.Bool, thisDc: Int32, dcOptions: [Api.DcOption], chatSizeMax: Int32, megagroupSizeMax: Int32, forwardedCountMax: Int32, onlineUpdatePeriodMs: Int32, offlineBlurTimeoutMs: Int32, offlineIdleTimeoutMs: Int32, onlineCloudTimeoutMs: Int32, notifyCloudDelayMs: Int32, notifyDefaultDelayMs: Int32, chatBigSize: Int32, pushChatPeriodMs: Int32, pushChatLimit: Int32, savedGifsLimit: Int32, editTimeLimit: Int32, ratingEDecay: Int32, disabledFeatures: [Api.DisabledFeature])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .config(let date, let expires, let testMode, let thisDc, let dcOptions, let chatSizeMax, let megagroupSizeMax, let forwardedCountMax, let onlineUpdatePeriodMs, let offlineBlurTimeoutMs, let offlineIdleTimeoutMs, let onlineCloudTimeoutMs, let notifyCloudDelayMs, let notifyDefaultDelayMs, let chatBigSize, let pushChatPeriodMs, let pushChatLimit, let savedGifsLimit, let editTimeLimit, let ratingEDecay, let disabledFeatures):
                    if boxed {
                        buffer.appendInt32(-918482040)
                    }
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(expires, buffer: buffer, boxed: false)
                    let _ = testMode.serialize(buffer, true)
                    serializeInt32(thisDc, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(dcOptions.count))
                    for item in dcOptions {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(chatSizeMax, buffer: buffer, boxed: false)
                    serializeInt32(megagroupSizeMax, buffer: buffer, boxed: false)
                    serializeInt32(forwardedCountMax, buffer: buffer, boxed: false)
                    serializeInt32(onlineUpdatePeriodMs, buffer: buffer, boxed: false)
                    serializeInt32(offlineBlurTimeoutMs, buffer: buffer, boxed: false)
                    serializeInt32(offlineIdleTimeoutMs, buffer: buffer, boxed: false)
                    serializeInt32(onlineCloudTimeoutMs, buffer: buffer, boxed: false)
                    serializeInt32(notifyCloudDelayMs, buffer: buffer, boxed: false)
                    serializeInt32(notifyDefaultDelayMs, buffer: buffer, boxed: false)
                    serializeInt32(chatBigSize, buffer: buffer, boxed: false)
                    serializeInt32(pushChatPeriodMs, buffer: buffer, boxed: false)
                    serializeInt32(pushChatLimit, buffer: buffer, boxed: false)
                    serializeInt32(savedGifsLimit, buffer: buffer, boxed: false)
                    serializeInt32(editTimeLimit, buffer: buffer, boxed: false)
                    serializeInt32(ratingEDecay, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(disabledFeatures.count))
                    for item in disabledFeatures {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_config(_ reader: BufferReader) -> Config? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.Bool?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.Bool
            }
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: [Api.DcOption]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.DcOption.self)
            }
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: Int32?
            _8 = reader.readInt32()
            var _9: Int32?
            _9 = reader.readInt32()
            var _10: Int32?
            _10 = reader.readInt32()
            var _11: Int32?
            _11 = reader.readInt32()
            var _12: Int32?
            _12 = reader.readInt32()
            var _13: Int32?
            _13 = reader.readInt32()
            var _14: Int32?
            _14 = reader.readInt32()
            var _15: Int32?
            _15 = reader.readInt32()
            var _16: Int32?
            _16 = reader.readInt32()
            var _17: Int32?
            _17 = reader.readInt32()
            var _18: Int32?
            _18 = reader.readInt32()
            var _19: Int32?
            _19 = reader.readInt32()
            var _20: Int32?
            _20 = reader.readInt32()
            var _21: [Api.DisabledFeature]?
            if let _ = reader.readInt32() {
                _21 = Api.parseVector(reader, elementSignature: 0, elementType: Api.DisabledFeature.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            let _c9 = _9 != nil
            let _c10 = _10 != nil
            let _c11 = _11 != nil
            let _c12 = _12 != nil
            let _c13 = _13 != nil
            let _c14 = _14 != nil
            let _c15 = _15 != nil
            let _c16 = _16 != nil
            let _c17 = _17 != nil
            let _c18 = _18 != nil
            let _c19 = _19 != nil
            let _c20 = _20 != nil
            let _c21 = _21 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 && _c14 && _c15 && _c16 && _c17 && _c18 && _c19 && _c20 && _c21 {
                return Api.Config.config(date: _1!, expires: _2!, testMode: _3!, thisDc: _4!, dcOptions: _5!, chatSizeMax: _6!, megagroupSizeMax: _7!, forwardedCountMax: _8!, onlineUpdatePeriodMs: _9!, offlineBlurTimeoutMs: _10!, offlineIdleTimeoutMs: _11!, onlineCloudTimeoutMs: _12!, notifyCloudDelayMs: _13!, notifyDefaultDelayMs: _14!, chatBigSize: _15!, pushChatPeriodMs: _16!, pushChatLimit: _17!, savedGifsLimit: _18!, editTimeLimit: _19!, ratingEDecay: _20!, disabledFeatures: _21!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .config(let date, let expires, let testMode, let thisDc, let dcOptions, let chatSizeMax, let megagroupSizeMax, let forwardedCountMax, let onlineUpdatePeriodMs, let offlineBlurTimeoutMs, let offlineIdleTimeoutMs, let onlineCloudTimeoutMs, let notifyCloudDelayMs, let notifyDefaultDelayMs, let chatBigSize, let pushChatPeriodMs, let pushChatLimit, let savedGifsLimit, let editTimeLimit, let ratingEDecay, let disabledFeatures):
                        return "(config date: \(date), expires: \(expires), testMode: \(testMode), thisDc: \(thisDc), dcOptions: \(dcOptions), chatSizeMax: \(chatSizeMax), megagroupSizeMax: \(megagroupSizeMax), forwardedCountMax: \(forwardedCountMax), onlineUpdatePeriodMs: \(onlineUpdatePeriodMs), offlineBlurTimeoutMs: \(offlineBlurTimeoutMs), offlineIdleTimeoutMs: \(offlineIdleTimeoutMs), onlineCloudTimeoutMs: \(onlineCloudTimeoutMs), notifyCloudDelayMs: \(notifyCloudDelayMs), notifyDefaultDelayMs: \(notifyDefaultDelayMs), chatBigSize: \(chatBigSize), pushChatPeriodMs: \(pushChatPeriodMs), pushChatLimit: \(pushChatLimit), savedGifsLimit: \(savedGifsLimit), editTimeLimit: \(editTimeLimit), ratingEDecay: \(ratingEDecay), disabledFeatures: \(disabledFeatures))"
                }
            }
        }
    }

    public enum TopPeerCategoryPeers: CustomStringConvertible {
        case topPeerCategoryPeers(category: Api.TopPeerCategory, count: Int32, peers: [Api.TopPeer])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .topPeerCategoryPeers(let category, let count, let peers):
                    if boxed {
                        buffer.appendInt32(-75283823)
                    }
                    let _ = category.serialize(buffer, true)
                    serializeInt32(count, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(peers.count))
                    for item in peers {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_topPeerCategoryPeers(_ reader: BufferReader) -> TopPeerCategoryPeers? {
            var _1: Api.TopPeerCategory?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.TopPeerCategory
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: [Api.TopPeer]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.TopPeer.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.TopPeerCategoryPeers.topPeerCategoryPeers(category: _1!, count: _2!, peers: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .topPeerCategoryPeers(let category, let count, let peers):
                        return "(topPeerCategoryPeers category: \(category), count: \(count), peers: \(peers))"
                }
            }
        }
    }

    public enum BotCommand: CustomStringConvertible {
        case botCommand(command: String, description: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .botCommand(let command, let description):
                    if boxed {
                        buffer.appendInt32(-1032140601)
                    }
                    serializeString(command, buffer: buffer, boxed: false)
                    serializeString(description, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_botCommand(_ reader: BufferReader) -> BotCommand? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.BotCommand.botCommand(command: _1!, description: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .botCommand(let command, let description):
                        return "(botCommand command: \(command), description: \(description))"
                }
            }
        }
    }

    public enum ResponseIndirect: CustomStringConvertible {
        case responseIndirect
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .responseIndirect:
                    if boxed {
                        buffer.appendInt32(563410286)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_responseIndirect(_ reader: BufferReader) -> ResponseIndirect? {
            return Api.ResponseIndirect.responseIndirect
        }
    
        public var description: String {
            get {
                switch self {
                    case .responseIndirect:
                        return "(responseIndirect)"
                }
            }
        }
    }

    public enum WallPaper: CustomStringConvertible {
        case wallPaper(id: Int32, title: String, sizes: [Api.PhotoSize], color: Int32)
        case wallPaperSolid(id: Int32, title: String, bgColor: Int32, color: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .wallPaper(let id, let title, let sizes, let color):
                    if boxed {
                        buffer.appendInt32(-860866985)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(sizes.count))
                    for item in sizes {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(color, buffer: buffer, boxed: false)
                    break
                case .wallPaperSolid(let id, let title, let bgColor, let color):
                    if boxed {
                        buffer.appendInt32(1662091044)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeInt32(bgColor, buffer: buffer, boxed: false)
                    serializeInt32(color, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_wallPaper(_ reader: BufferReader) -> WallPaper? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.PhotoSize]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PhotoSize.self)
            }
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.WallPaper.wallPaper(id: _1!, title: _2!, sizes: _3!, color: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_wallPaperSolid(_ reader: BufferReader) -> WallPaper? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.WallPaper.wallPaperSolid(id: _1!, title: _2!, bgColor: _3!, color: _4!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .wallPaper(let id, let title, let sizes, let color):
                        return "(wallPaper id: \(id), title: \(title), sizes: \(sizes), color: \(color))"
                    case .wallPaperSolid(let id, let title, let bgColor, let color):
                        return "(wallPaperSolid id: \(id), title: \(title), bgColor: \(bgColor), color: \(color))"
                }
            }
        }
    }

    public enum InputChatPhoto: CustomStringConvertible {
        case inputChatPhotoEmpty
        case inputChatUploadedPhoto(file: Api.InputFile, crop: Api.InputPhotoCrop)
        case inputChatPhoto(id: Api.InputPhoto, crop: Api.InputPhotoCrop)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputChatPhotoEmpty:
                    if boxed {
                        buffer.appendInt32(480546647)
                    }
                    
                    break
                case .inputChatUploadedPhoto(let file, let crop):
                    if boxed {
                        buffer.appendInt32(-1809496270)
                    }
                    let _ = file.serialize(buffer, true)
                    let _ = crop.serialize(buffer, true)
                    break
                case .inputChatPhoto(let id, let crop):
                    if boxed {
                        buffer.appendInt32(-1293828344)
                    }
                    let _ = id.serialize(buffer, true)
                    let _ = crop.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_inputChatPhotoEmpty(_ reader: BufferReader) -> InputChatPhoto? {
            return Api.InputChatPhoto.inputChatPhotoEmpty
        }
        private static func parse_inputChatUploadedPhoto(_ reader: BufferReader) -> InputChatPhoto? {
            var _1: Api.InputFile?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputFile
            }
            var _2: Api.InputPhotoCrop?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputPhotoCrop
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputChatPhoto.inputChatUploadedPhoto(file: _1!, crop: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputChatPhoto(_ reader: BufferReader) -> InputChatPhoto? {
            var _1: Api.InputPhoto?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputPhoto
            }
            var _2: Api.InputPhotoCrop?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputPhotoCrop
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputChatPhoto.inputChatPhoto(id: _1!, crop: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputChatPhotoEmpty:
                        return "(inputChatPhotoEmpty)"
                    case .inputChatUploadedPhoto(let file, let crop):
                        return "(inputChatUploadedPhoto file: \(file), crop: \(crop))"
                    case .inputChatPhoto(let id, let crop):
                        return "(inputChatPhoto id: \(id), crop: \(crop))"
                }
            }
        }
    }

    public enum Updates: CustomStringConvertible {
        case updatesTooLong
        case updateShort(update: Api.Update, date: Int32)
        case updatesCombined(updates: [Api.Update], users: [Api.User], chats: [Api.Chat], date: Int32, seqStart: Int32, seq: Int32)
        case updates(updates: [Api.Update], users: [Api.User], chats: [Api.Chat], date: Int32, seq: Int32)
        case updateShortMessage(flags: Int32, id: Int32, userId: Int32, message: String, pts: Int32, ptsCount: Int32, date: Int32, fwdFrom: Api.MessageFwdHeader?, viaBotId: Int32?, replyToMsgId: Int32?, entities: [Api.MessageEntity]?)
        case updateShortChatMessage(flags: Int32, id: Int32, fromId: Int32, chatId: Int32, message: String, pts: Int32, ptsCount: Int32, date: Int32, fwdFrom: Api.MessageFwdHeader?, viaBotId: Int32?, replyToMsgId: Int32?, entities: [Api.MessageEntity]?)
        case updateShortSentMessage(flags: Int32, id: Int32, pts: Int32, ptsCount: Int32, date: Int32, media: Api.MessageMedia?, entities: [Api.MessageEntity]?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .updatesTooLong:
                    if boxed {
                        buffer.appendInt32(-484987010)
                    }
                    
                    break
                case .updateShort(let update, let date):
                    if boxed {
                        buffer.appendInt32(2027216577)
                    }
                    let _ = update.serialize(buffer, true)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
                case .updatesCombined(let updates, let users, let chats, let date, let seqStart, let seq):
                    if boxed {
                        buffer.appendInt32(1918567619)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(updates.count))
                    for item in updates {
                        let _ = item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(seqStart, buffer: buffer, boxed: false)
                    serializeInt32(seq, buffer: buffer, boxed: false)
                    break
                case .updates(let updates, let users, let chats, let date, let seq):
                    if boxed {
                        buffer.appendInt32(1957577280)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(updates.count))
                    for item in updates {
                        let _ = item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(seq, buffer: buffer, boxed: false)
                    break
                case .updateShortMessage(let flags, let id, let userId, let message, let pts, let ptsCount, let date, let fwdFrom, let viaBotId, let replyToMsgId, let entities):
                    if boxed {
                        buffer.appendInt32(-1857044719)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = fwdFrom!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 11) != 0 {serializeInt32(viaBotId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 7) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    break
                case .updateShortChatMessage(let flags, let id, let fromId, let chatId, let message, let pts, let ptsCount, let date, let fwdFrom, let viaBotId, let replyToMsgId, let entities):
                    if boxed {
                        buffer.appendInt32(377562760)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt32(fromId, buffer: buffer, boxed: false)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = fwdFrom!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 11) != 0 {serializeInt32(viaBotId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 7) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    break
                case .updateShortSentMessage(let flags, let id, let pts, let ptsCount, let date, let media, let entities):
                    if boxed {
                        buffer.appendInt32(301019932)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(ptsCount, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 9) != 0 {let _ = media!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 7) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    break
    }
    return true
    }
    
        private static func parse_updatesTooLong(_ reader: BufferReader) -> Updates? {
            return Api.Updates.updatesTooLong
        }
        private static func parse_updateShort(_ reader: BufferReader) -> Updates? {
            var _1: Api.Update?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Update
            }
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.Updates.updateShort(update: _1!, date: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_updatesCombined(_ reader: BufferReader) -> Updates? {
            var _1: [Api.Update]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Update.self)
            }
            var _2: [Api.User]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            var _3: [Api.Chat]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.Updates.updatesCombined(updates: _1!, users: _2!, chats: _3!, date: _4!, seqStart: _5!, seq: _6!)
            }
            else {
                return nil
            }
        }
        private static func parse_updates(_ reader: BufferReader) -> Updates? {
            var _1: [Api.Update]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Update.self)
            }
            var _2: [Api.User]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            var _3: [Api.Chat]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.Updates.updates(updates: _1!, users: _2!, chats: _3!, date: _4!, seq: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_updateShortMessage(_ reader: BufferReader) -> Updates? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: String?
            _4 = parseString(reader)
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: Api.MessageFwdHeader?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _8 = Api.parse(reader, signature: signature) as? Api.MessageFwdHeader
            } }
            var _9: Int32?
            if Int(_1!) & Int(1 << 11) != 0 {_9 = reader.readInt32() }
            var _10: Int32?
            if Int(_1!) & Int(1 << 3) != 0 {_10 = reader.readInt32() }
            var _11: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 7) != 0 {if let _ = reader.readInt32() {
                _11 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 2) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 11) == 0) || _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 3) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 7) == 0) || _11 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 {
                return Api.Updates.updateShortMessage(flags: _1!, id: _2!, userId: _3!, message: _4!, pts: _5!, ptsCount: _6!, date: _7!, fwdFrom: _8, viaBotId: _9, replyToMsgId: _10, entities: _11)
            }
            else {
                return nil
            }
        }
        private static func parse_updateShortChatMessage(_ reader: BufferReader) -> Updates? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: String?
            _5 = parseString(reader)
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: Int32?
            _8 = reader.readInt32()
            var _9: Api.MessageFwdHeader?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _9 = Api.parse(reader, signature: signature) as? Api.MessageFwdHeader
            } }
            var _10: Int32?
            if Int(_1!) & Int(1 << 11) != 0 {_10 = reader.readInt32() }
            var _11: Int32?
            if Int(_1!) & Int(1 << 3) != 0 {_11 = reader.readInt32() }
            var _12: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 7) != 0 {if let _ = reader.readInt32() {
                _12 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 2) == 0) || _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 11) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 3) == 0) || _11 != nil
            let _c12 = (Int(_1!) & Int(1 << 7) == 0) || _12 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 {
                return Api.Updates.updateShortChatMessage(flags: _1!, id: _2!, fromId: _3!, chatId: _4!, message: _5!, pts: _6!, ptsCount: _7!, date: _8!, fwdFrom: _9, viaBotId: _10, replyToMsgId: _11, entities: _12)
            }
            else {
                return nil
            }
        }
        private static func parse_updateShortSentMessage(_ reader: BufferReader) -> Updates? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Api.MessageMedia?
            if Int(_1!) & Int(1 << 9) != 0 {if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.MessageMedia
            } }
            var _7: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 7) != 0 {if let _ = reader.readInt32() {
                _7 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 9) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 7) == 0) || _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.Updates.updateShortSentMessage(flags: _1!, id: _2!, pts: _3!, ptsCount: _4!, date: _5!, media: _6, entities: _7)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .updatesTooLong:
                        return "(updatesTooLong)"
                    case .updateShort(let update, let date):
                        return "(updateShort update: \(update), date: \(date))"
                    case .updatesCombined(let updates, let users, let chats, let date, let seqStart, let seq):
                        return "(updatesCombined updates: \(updates), users: \(users), chats: \(chats), date: \(date), seqStart: \(seqStart), seq: \(seq))"
                    case .updates(let updates, let users, let chats, let date, let seq):
                        return "(updates updates: \(updates), users: \(users), chats: \(chats), date: \(date), seq: \(seq))"
                    case .updateShortMessage(let flags, let id, let userId, let message, let pts, let ptsCount, let date, let fwdFrom, let viaBotId, let replyToMsgId, let entities):
                        return "(updateShortMessage flags: \(flags), id: \(id), userId: \(userId), message: \(message), pts: \(pts), ptsCount: \(ptsCount), date: \(date), fwdFrom: \(fwdFrom), viaBotId: \(viaBotId), replyToMsgId: \(replyToMsgId), entities: \(entities))"
                    case .updateShortChatMessage(let flags, let id, let fromId, let chatId, let message, let pts, let ptsCount, let date, let fwdFrom, let viaBotId, let replyToMsgId, let entities):
                        return "(updateShortChatMessage flags: \(flags), id: \(id), fromId: \(fromId), chatId: \(chatId), message: \(message), pts: \(pts), ptsCount: \(ptsCount), date: \(date), fwdFrom: \(fwdFrom), viaBotId: \(viaBotId), replyToMsgId: \(replyToMsgId), entities: \(entities))"
                    case .updateShortSentMessage(let flags, let id, let pts, let ptsCount, let date, let media, let entities):
                        return "(updateShortSentMessage flags: \(flags), id: \(id), pts: \(pts), ptsCount: \(ptsCount), date: \(date), media: \(media), entities: \(entities))"
                }
            }
        }
    }

    public enum InitConnection: CustomStringConvertible {
        case initConnection(apiId: Int32, deviceModel: String, systemVersion: String, appVersion: String, langCode: String, query: Any)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .initConnection(let apiId, let deviceModel, let systemVersion, let appVersion, let langCode, let query):
                    if boxed {
                        buffer.appendInt32(1769565673)
                    }
                    serializeInt32(apiId, buffer: buffer, boxed: false)
                    serializeString(deviceModel, buffer: buffer, boxed: false)
                    serializeString(systemVersion, buffer: buffer, boxed: false)
                    serializeString(appVersion, buffer: buffer, boxed: false)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    let _ = Api.serializeObject(query, buffer: buffer, boxed: true)
                    break
    }
    return true
    }
    
        private static func parse_initConnection(_ reader: BufferReader) -> InitConnection? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            var _6: Any?
            if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.InitConnection.initConnection(apiId: _1!, deviceModel: _2!, systemVersion: _3!, appVersion: _4!, langCode: _5!, query: _6!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .initConnection(let apiId, let deviceModel, let systemVersion, let appVersion, let langCode, let query):
                        return "(initConnection apiId: \(apiId), deviceModel: \(deviceModel), systemVersion: \(systemVersion), appVersion: \(appVersion), langCode: \(langCode), query: \(query))"
                }
            }
        }
    }

    public enum MessageMedia: CustomStringConvertible {
        case messageMediaEmpty
        case messageMediaGeo(geo: Api.GeoPoint)
        case messageMediaContact(phoneNumber: String, firstName: String, lastName: String, userId: Int32)
        case messageMediaUnsupported
        case messageMediaWebPage(webpage: Api.WebPage)
        case messageMediaPhoto(photo: Api.Photo, caption: String)
        case messageMediaVenue(geo: Api.GeoPoint, title: String, address: String, provider: String, venueId: String)
        case messageMediaDocument(document: Api.Document, caption: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageMediaEmpty:
                    if boxed {
                        buffer.appendInt32(1038967584)
                    }
                    
                    break
                case .messageMediaGeo(let geo):
                    if boxed {
                        buffer.appendInt32(1457575028)
                    }
                    let _ = geo.serialize(buffer, true)
                    break
                case .messageMediaContact(let phoneNumber, let firstName, let lastName, let userId):
                    if boxed {
                        buffer.appendInt32(1585262393)
                    }
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
                case .messageMediaUnsupported:
                    if boxed {
                        buffer.appendInt32(-1618676578)
                    }
                    
                    break
                case .messageMediaWebPage(let webpage):
                    if boxed {
                        buffer.appendInt32(-1557277184)
                    }
                    let _ = webpage.serialize(buffer, true)
                    break
                case .messageMediaPhoto(let photo, let caption):
                    if boxed {
                        buffer.appendInt32(1032643901)
                    }
                    let _ = photo.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
                case .messageMediaVenue(let geo, let title, let address, let provider, let venueId):
                    if boxed {
                        buffer.appendInt32(2031269663)
                    }
                    let _ = geo.serialize(buffer, true)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeString(address, buffer: buffer, boxed: false)
                    serializeString(provider, buffer: buffer, boxed: false)
                    serializeString(venueId, buffer: buffer, boxed: false)
                    break
                case .messageMediaDocument(let document, let caption):
                    if boxed {
                        buffer.appendInt32(-203411800)
                    }
                    let _ = document.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_messageMediaEmpty(_ reader: BufferReader) -> MessageMedia? {
            return Api.MessageMedia.messageMediaEmpty
        }
        private static func parse_messageMediaGeo(_ reader: BufferReader) -> MessageMedia? {
            var _1: Api.GeoPoint?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageMedia.messageMediaGeo(geo: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageMediaContact(_ reader: BufferReader) -> MessageMedia? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.MessageMedia.messageMediaContact(phoneNumber: _1!, firstName: _2!, lastName: _3!, userId: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageMediaUnsupported(_ reader: BufferReader) -> MessageMedia? {
            return Api.MessageMedia.messageMediaUnsupported
        }
        private static func parse_messageMediaWebPage(_ reader: BufferReader) -> MessageMedia? {
            var _1: Api.WebPage?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.WebPage
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageMedia.messageMediaWebPage(webpage: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageMediaPhoto(_ reader: BufferReader) -> MessageMedia? {
            var _1: Api.Photo?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Photo
            }
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageMedia.messageMediaPhoto(photo: _1!, caption: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageMediaVenue(_ reader: BufferReader) -> MessageMedia? {
            var _1: Api.GeoPoint?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            }
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.MessageMedia.messageMediaVenue(geo: _1!, title: _2!, address: _3!, provider: _4!, venueId: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageMediaDocument(_ reader: BufferReader) -> MessageMedia? {
            var _1: Api.Document?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Document
            }
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageMedia.messageMediaDocument(document: _1!, caption: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageMediaEmpty:
                        return "(messageMediaEmpty)"
                    case .messageMediaGeo(let geo):
                        return "(messageMediaGeo geo: \(geo))"
                    case .messageMediaContact(let phoneNumber, let firstName, let lastName, let userId):
                        return "(messageMediaContact phoneNumber: \(phoneNumber), firstName: \(firstName), lastName: \(lastName), userId: \(userId))"
                    case .messageMediaUnsupported:
                        return "(messageMediaUnsupported)"
                    case .messageMediaWebPage(let webpage):
                        return "(messageMediaWebPage webpage: \(webpage))"
                    case .messageMediaPhoto(let photo, let caption):
                        return "(messageMediaPhoto photo: \(photo), caption: \(caption))"
                    case .messageMediaVenue(let geo, let title, let address, let provider, let venueId):
                        return "(messageMediaVenue geo: \(geo), title: \(title), address: \(address), provider: \(provider), venueId: \(venueId))"
                    case .messageMediaDocument(let document, let caption):
                        return "(messageMediaDocument document: \(document), caption: \(caption))"
                }
            }
        }
    }

    public enum Null: CustomStringConvertible {
        case null
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .null:
                    if boxed {
                        buffer.appendInt32(1450380236)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_null(_ reader: BufferReader) -> Null? {
            return Api.Null.null
        }
    
        public var description: String {
            get {
                switch self {
                    case .null:
                        return "(null)"
                }
            }
        }
    }

    public enum DocumentAttribute: CustomStringConvertible {
        case documentAttributeImageSize(w: Int32, h: Int32)
        case documentAttributeAnimated
        case documentAttributeVideo(duration: Int32, w: Int32, h: Int32)
        case documentAttributeFilename(fileName: String)
        case documentAttributeSticker(alt: String, stickerset: Api.InputStickerSet)
        case documentAttributeAudio(flags: Int32, duration: Int32, title: String?, performer: String?, waveform: Buffer?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .documentAttributeImageSize(let w, let h):
                    if boxed {
                        buffer.appendInt32(1815593308)
                    }
                    serializeInt32(w, buffer: buffer, boxed: false)
                    serializeInt32(h, buffer: buffer, boxed: false)
                    break
                case .documentAttributeAnimated:
                    if boxed {
                        buffer.appendInt32(297109817)
                    }
                    
                    break
                case .documentAttributeVideo(let duration, let w, let h):
                    if boxed {
                        buffer.appendInt32(1494273227)
                    }
                    serializeInt32(duration, buffer: buffer, boxed: false)
                    serializeInt32(w, buffer: buffer, boxed: false)
                    serializeInt32(h, buffer: buffer, boxed: false)
                    break
                case .documentAttributeFilename(let fileName):
                    if boxed {
                        buffer.appendInt32(358154344)
                    }
                    serializeString(fileName, buffer: buffer, boxed: false)
                    break
                case .documentAttributeSticker(let alt, let stickerset):
                    if boxed {
                        buffer.appendInt32(978674434)
                    }
                    serializeString(alt, buffer: buffer, boxed: false)
                    let _ = stickerset.serialize(buffer, true)
                    break
                case .documentAttributeAudio(let flags, let duration, let title, let performer, let waveform):
                    if boxed {
                        buffer.appendInt32(-1739392570)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(duration, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeString(title!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(performer!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeBytes(waveform!, buffer: buffer, boxed: false)}
                    break
    }
    return true
    }
    
        private static func parse_documentAttributeImageSize(_ reader: BufferReader) -> DocumentAttribute? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.DocumentAttribute.documentAttributeImageSize(w: _1!, h: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_documentAttributeAnimated(_ reader: BufferReader) -> DocumentAttribute? {
            return Api.DocumentAttribute.documentAttributeAnimated
        }
        private static func parse_documentAttributeVideo(_ reader: BufferReader) -> DocumentAttribute? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.DocumentAttribute.documentAttributeVideo(duration: _1!, w: _2!, h: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_documentAttributeFilename(_ reader: BufferReader) -> DocumentAttribute? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.DocumentAttribute.documentAttributeFilename(fileName: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_documentAttributeSticker(_ reader: BufferReader) -> DocumentAttribute? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Api.InputStickerSet?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputStickerSet
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.DocumentAttribute.documentAttributeSticker(alt: _1!, stickerset: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_documentAttributeAudio(_ reader: BufferReader) -> DocumentAttribute? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            if Int(_1!) & Int(1 << 0) != 0 {_3 = parseString(reader) }
            var _4: String?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = parseString(reader) }
            var _5: Buffer?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = parseBytes(reader) }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.DocumentAttribute.documentAttributeAudio(flags: _1!, duration: _2!, title: _3, performer: _4, waveform: _5)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .documentAttributeImageSize(let w, let h):
                        return "(documentAttributeImageSize w: \(w), h: \(h))"
                    case .documentAttributeAnimated:
                        return "(documentAttributeAnimated)"
                    case .documentAttributeVideo(let duration, let w, let h):
                        return "(documentAttributeVideo duration: \(duration), w: \(w), h: \(h))"
                    case .documentAttributeFilename(let fileName):
                        return "(documentAttributeFilename fileName: \(fileName))"
                    case .documentAttributeSticker(let alt, let stickerset):
                        return "(documentAttributeSticker alt: \(alt), stickerset: \(stickerset))"
                    case .documentAttributeAudio(let flags, let duration, let title, let performer, let waveform):
                        return "(documentAttributeAudio flags: \(flags), duration: \(duration), title: \(title), performer: \(performer), waveform: \(waveform))"
                }
            }
        }
    }

    public enum ChatPhoto: CustomStringConvertible {
        case chatPhotoEmpty
        case chatPhoto(photoSmall: Api.FileLocation, photoBig: Api.FileLocation)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatPhotoEmpty:
                    if boxed {
                        buffer.appendInt32(935395612)
                    }
                    
                    break
                case .chatPhoto(let photoSmall, let photoBig):
                    if boxed {
                        buffer.appendInt32(1632839530)
                    }
                    let _ = photoSmall.serialize(buffer, true)
                    let _ = photoBig.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_chatPhotoEmpty(_ reader: BufferReader) -> ChatPhoto? {
            return Api.ChatPhoto.chatPhotoEmpty
        }
        private static func parse_chatPhoto(_ reader: BufferReader) -> ChatPhoto? {
            var _1: Api.FileLocation?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.FileLocation
            }
            var _2: Api.FileLocation?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.FileLocation
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ChatPhoto.chatPhoto(photoSmall: _1!, photoBig: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatPhotoEmpty:
                        return "(chatPhotoEmpty)"
                    case .chatPhoto(let photoSmall, let photoBig):
                        return "(chatPhoto photoSmall: \(photoSmall), photoBig: \(photoBig))"
                }
            }
        }
    }

    public enum InputStickerSet: CustomStringConvertible {
        case inputStickerSetEmpty
        case inputStickerSetID(id: Int64, accessHash: Int64)
        case inputStickerSetShortName(shortName: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputStickerSetEmpty:
                    if boxed {
                        buffer.appendInt32(-4838507)
                    }
                    
                    break
                case .inputStickerSetID(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(-1645763991)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
                case .inputStickerSetShortName(let shortName):
                    if boxed {
                        buffer.appendInt32(-2044933984)
                    }
                    serializeString(shortName, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputStickerSetEmpty(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetEmpty
        }
        private static func parse_inputStickerSetID(_ reader: BufferReader) -> InputStickerSet? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputStickerSet.inputStickerSetID(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputStickerSetShortName(_ reader: BufferReader) -> InputStickerSet? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputStickerSet.inputStickerSetShortName(shortName: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputStickerSetEmpty:
                        return "(inputStickerSetEmpty)"
                    case .inputStickerSetID(let id, let accessHash):
                        return "(inputStickerSetID id: \(id), accessHash: \(accessHash))"
                    case .inputStickerSetShortName(let shortName):
                        return "(inputStickerSetShortName shortName: \(shortName))"
                }
            }
        }
    }

    public enum BotInfo: CustomStringConvertible {
        case botInfo(userId: Int32, description: String, commands: [Api.BotCommand])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .botInfo(let userId, let description, let commands):
                    if boxed {
                        buffer.appendInt32(-1729618630)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeString(description, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(commands.count))
                    for item in commands {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_botInfo(_ reader: BufferReader) -> BotInfo? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.BotCommand]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.BotCommand.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.BotInfo.botInfo(userId: _1!, description: _2!, commands: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .botInfo(let userId, let description, let commands):
                        return "(botInfo userId: \(userId), description: \(description), commands: \(commands))"
                }
            }
        }
    }

    public enum FoundGif: CustomStringConvertible {
        case foundGif(url: String, thumbUrl: String, contentUrl: String, contentType: String, w: Int32, h: Int32)
        case foundGifCached(url: String, photo: Api.Photo, document: Api.Document)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .foundGif(let url, let thumbUrl, let contentUrl, let contentType, let w, let h):
                    if boxed {
                        buffer.appendInt32(372165663)
                    }
                    serializeString(url, buffer: buffer, boxed: false)
                    serializeString(thumbUrl, buffer: buffer, boxed: false)
                    serializeString(contentUrl, buffer: buffer, boxed: false)
                    serializeString(contentType, buffer: buffer, boxed: false)
                    serializeInt32(w, buffer: buffer, boxed: false)
                    serializeInt32(h, buffer: buffer, boxed: false)
                    break
                case .foundGifCached(let url, let photo, let document):
                    if boxed {
                        buffer.appendInt32(-1670052855)
                    }
                    serializeString(url, buffer: buffer, boxed: false)
                    let _ = photo.serialize(buffer, true)
                    let _ = document.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_foundGif(_ reader: BufferReader) -> FoundGif? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.FoundGif.foundGif(url: _1!, thumbUrl: _2!, contentUrl: _3!, contentType: _4!, w: _5!, h: _6!)
            }
            else {
                return nil
            }
        }
        private static func parse_foundGifCached(_ reader: BufferReader) -> FoundGif? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Api.Photo?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Photo
            }
            var _3: Api.Document?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.Document
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.FoundGif.foundGifCached(url: _1!, photo: _2!, document: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .foundGif(let url, let thumbUrl, let contentUrl, let contentType, let w, let h):
                        return "(foundGif url: \(url), thumbUrl: \(thumbUrl), contentUrl: \(contentUrl), contentType: \(contentType), w: \(w), h: \(h))"
                    case .foundGifCached(let url, let photo, let document):
                        return "(foundGifCached url: \(url), photo: \(photo), document: \(document))"
                }
            }
        }
    }

    public enum User: CustomStringConvertible {
        case userEmpty(id: Int32)
        case user(flags: Int32, id: Int32, accessHash: Int64?, firstName: String?, lastName: String?, username: String?, phone: String?, photo: Api.UserProfilePhoto?, status: Api.UserStatus?, botInfoVersion: Int32?, restrictionReason: String?, botInlinePlaceholder: String?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .userEmpty(let id):
                    if boxed {
                        buffer.appendInt32(537022650)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    break
                case .user(let flags, let id, let accessHash, let firstName, let lastName, let username, let phone, let photo, let status, let botInfoVersion, let restrictionReason, let botInlinePlaceholder):
                    if boxed {
                        buffer.appendInt32(-787638374)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt64(accessHash!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(firstName!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(lastName!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeString(username!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 4) != 0 {serializeString(phone!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {let _ = photo!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 6) != 0 {let _ = status!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 14) != 0 {serializeInt32(botInfoVersion!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 18) != 0 {serializeString(restrictionReason!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 19) != 0 {serializeString(botInlinePlaceholder!, buffer: buffer, boxed: false)}
                    break
    }
    return true
    }
    
        private static func parse_userEmpty(_ reader: BufferReader) -> User? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.User.userEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_user(_ reader: BufferReader) -> User? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int64?
            if Int(_1!) & Int(1 << 0) != 0 {_3 = reader.readInt64() }
            var _4: String?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = parseString(reader) }
            var _5: String?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = parseString(reader) }
            var _6: String?
            if Int(_1!) & Int(1 << 3) != 0 {_6 = parseString(reader) }
            var _7: String?
            if Int(_1!) & Int(1 << 4) != 0 {_7 = parseString(reader) }
            var _8: Api.UserProfilePhoto?
            if Int(_1!) & Int(1 << 5) != 0 {if let signature = reader.readInt32() {
                _8 = Api.parse(reader, signature: signature) as? Api.UserProfilePhoto
            } }
            var _9: Api.UserStatus?
            if Int(_1!) & Int(1 << 6) != 0 {if let signature = reader.readInt32() {
                _9 = Api.parse(reader, signature: signature) as? Api.UserStatus
            } }
            var _10: Int32?
            if Int(_1!) & Int(1 << 14) != 0 {_10 = reader.readInt32() }
            var _11: String?
            if Int(_1!) & Int(1 << 18) != 0 {_11 = parseString(reader) }
            var _12: String?
            if Int(_1!) & Int(1 << 19) != 0 {_12 = parseString(reader) }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 3) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 4) == 0) || _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 5) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 6) == 0) || _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 14) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 18) == 0) || _11 != nil
            let _c12 = (Int(_1!) & Int(1 << 19) == 0) || _12 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 {
                return Api.User.user(flags: _1!, id: _2!, accessHash: _3, firstName: _4, lastName: _5, username: _6, phone: _7, photo: _8, status: _9, botInfoVersion: _10, restrictionReason: _11, botInlinePlaceholder: _12)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .userEmpty(let id):
                        return "(userEmpty id: \(id))"
                    case .user(let flags, let id, let accessHash, let firstName, let lastName, let username, let phone, let photo, let status, let botInfoVersion, let restrictionReason, let botInlinePlaceholder):
                        return "(user flags: \(flags), id: \(id), accessHash: \(accessHash), firstName: \(firstName), lastName: \(lastName), username: \(username), phone: \(phone), photo: \(photo), status: \(status), botInfoVersion: \(botInfoVersion), restrictionReason: \(restrictionReason), botInlinePlaceholder: \(botInlinePlaceholder))"
                }
            }
        }
    }

    public enum Message: CustomStringConvertible {
        case messageEmpty(id: Int32)
        case message(flags: Int32, id: Int32, fromId: Int32?, toId: Api.Peer, fwdFrom: Api.MessageFwdHeader?, viaBotId: Int32?, replyToMsgId: Int32?, date: Int32, message: String, media: Api.MessageMedia?, replyMarkup: Api.ReplyMarkup?, entities: [Api.MessageEntity]?, views: Int32?, editDate: Int32?)
        case messageService(flags: Int32, id: Int32, fromId: Int32?, toId: Api.Peer, replyToMsgId: Int32?, date: Int32, action: Api.MessageAction)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageEmpty(let id):
                    if boxed {
                        buffer.appendInt32(-2082087340)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    break
                case .message(let flags, let id, let fromId, let toId, let fwdFrom, let viaBotId, let replyToMsgId, let date, let message, let media, let replyMarkup, let entities, let views, let editDate):
                    if boxed {
                        buffer.appendInt32(-1063525281)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 8) != 0 {serializeInt32(fromId!, buffer: buffer, boxed: false)}
                    let _ = toId.serialize(buffer, true)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = fwdFrom!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 11) != 0 {serializeInt32(viaBotId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 9) != 0 {let _ = media!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 6) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 7) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    if Int(flags) & Int(1 << 10) != 0 {serializeInt32(views!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 15) != 0 {serializeInt32(editDate!, buffer: buffer, boxed: false)}
                    break
                case .messageService(let flags, let id, let fromId, let toId, let replyToMsgId, let date, let action):
                    if boxed {
                        buffer.appendInt32(-1642487306)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 8) != 0 {serializeInt32(fromId!, buffer: buffer, boxed: false)}
                    let _ = toId.serialize(buffer, true)
                    if Int(flags) & Int(1 << 3) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    serializeInt32(date, buffer: buffer, boxed: false)
                    let _ = action.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_messageEmpty(_ reader: BufferReader) -> Message? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Message.messageEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_message(_ reader: BufferReader) -> Message? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            if Int(_1!) & Int(1 << 8) != 0 {_3 = reader.readInt32() }
            var _4: Api.Peer?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _5: Api.MessageFwdHeader?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.MessageFwdHeader
            } }
            var _6: Int32?
            if Int(_1!) & Int(1 << 11) != 0 {_6 = reader.readInt32() }
            var _7: Int32?
            if Int(_1!) & Int(1 << 3) != 0 {_7 = reader.readInt32() }
            var _8: Int32?
            _8 = reader.readInt32()
            var _9: String?
            _9 = parseString(reader)
            var _10: Api.MessageMedia?
            if Int(_1!) & Int(1 << 9) != 0 {if let signature = reader.readInt32() {
                _10 = Api.parse(reader, signature: signature) as? Api.MessageMedia
            } }
            var _11: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 6) != 0 {if let signature = reader.readInt32() {
                _11 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            var _12: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 7) != 0 {if let _ = reader.readInt32() {
                _12 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            var _13: Int32?
            if Int(_1!) & Int(1 << 10) != 0 {_13 = reader.readInt32() }
            var _14: Int32?
            if Int(_1!) & Int(1 << 15) != 0 {_14 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 8) == 0) || _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 11) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 3) == 0) || _7 != nil
            let _c8 = _8 != nil
            let _c9 = _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 9) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 6) == 0) || _11 != nil
            let _c12 = (Int(_1!) & Int(1 << 7) == 0) || _12 != nil
            let _c13 = (Int(_1!) & Int(1 << 10) == 0) || _13 != nil
            let _c14 = (Int(_1!) & Int(1 << 15) == 0) || _14 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 && _c14 {
                return Api.Message.message(flags: _1!, id: _2!, fromId: _3, toId: _4!, fwdFrom: _5, viaBotId: _6, replyToMsgId: _7, date: _8!, message: _9!, media: _10, replyMarkup: _11, entities: _12, views: _13, editDate: _14)
            }
            else {
                return nil
            }
        }
        private static func parse_messageService(_ reader: BufferReader) -> Message? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            if Int(_1!) & Int(1 << 8) != 0 {_3 = reader.readInt32() }
            var _4: Api.Peer?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _5: Int32?
            if Int(_1!) & Int(1 << 3) != 0 {_5 = reader.readInt32() }
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Api.MessageAction?
            if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.MessageAction
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 8) == 0) || _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 3) == 0) || _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.Message.messageService(flags: _1!, id: _2!, fromId: _3, toId: _4!, replyToMsgId: _5, date: _6!, action: _7!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageEmpty(let id):
                        return "(messageEmpty id: \(id))"
                    case .message(let flags, let id, let fromId, let toId, let fwdFrom, let viaBotId, let replyToMsgId, let date, let message, let media, let replyMarkup, let entities, let views, let editDate):
                        return "(message flags: \(flags), id: \(id), fromId: \(fromId), toId: \(toId), fwdFrom: \(fwdFrom), viaBotId: \(viaBotId), replyToMsgId: \(replyToMsgId), date: \(date), message: \(message), media: \(media), replyMarkup: \(replyMarkup), entities: \(entities), views: \(views), editDate: \(editDate))"
                    case .messageService(let flags, let id, let fromId, let toId, let replyToMsgId, let date, let action):
                        return "(messageService flags: \(flags), id: \(id), fromId: \(fromId), toId: \(toId), replyToMsgId: \(replyToMsgId), date: \(date), action: \(action))"
                }
            }
        }
    }

    public enum InputFileLocation: CustomStringConvertible {
        case inputFileLocation(volumeId: Int64, localId: Int32, secret: Int64)
        case inputEncryptedFileLocation(id: Int64, accessHash: Int64)
        case inputDocumentFileLocation(id: Int64, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputFileLocation(let volumeId, let localId, let secret):
                    if boxed {
                        buffer.appendInt32(342061462)
                    }
                    serializeInt64(volumeId, buffer: buffer, boxed: false)
                    serializeInt32(localId, buffer: buffer, boxed: false)
                    serializeInt64(secret, buffer: buffer, boxed: false)
                    break
                case .inputEncryptedFileLocation(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(-182231723)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
                case .inputDocumentFileLocation(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(1313188841)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputFileLocation(_ reader: BufferReader) -> InputFileLocation? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int64?
            _3 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputFileLocation.inputFileLocation(volumeId: _1!, localId: _2!, secret: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputEncryptedFileLocation(_ reader: BufferReader) -> InputFileLocation? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputFileLocation.inputEncryptedFileLocation(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputDocumentFileLocation(_ reader: BufferReader) -> InputFileLocation? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputFileLocation.inputDocumentFileLocation(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputFileLocation(let volumeId, let localId, let secret):
                        return "(inputFileLocation volumeId: \(volumeId), localId: \(localId), secret: \(secret))"
                    case .inputEncryptedFileLocation(let id, let accessHash):
                        return "(inputEncryptedFileLocation id: \(id), accessHash: \(accessHash))"
                    case .inputDocumentFileLocation(let id, let accessHash):
                        return "(inputDocumentFileLocation id: \(id), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum GeoPoint: CustomStringConvertible {
        case geoPointEmpty
        case geoPoint(long: Double, lat: Double)
        case geoPlace(long: Double, lat: Double, name: Api.GeoPlaceName)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .geoPointEmpty:
                    if boxed {
                        buffer.appendInt32(286776671)
                    }
                    
                    break
                case .geoPoint(let long, let lat):
                    if boxed {
                        buffer.appendInt32(541710092)
                    }
                    serializeDouble(long, buffer: buffer, boxed: false)
                    serializeDouble(lat, buffer: buffer, boxed: false)
                    break
                case .geoPlace(let long, let lat, let name):
                    if boxed {
                        buffer.appendInt32(1855857098)
                    }
                    serializeDouble(long, buffer: buffer, boxed: false)
                    serializeDouble(lat, buffer: buffer, boxed: false)
                    let _ = name.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_geoPointEmpty(_ reader: BufferReader) -> GeoPoint? {
            return Api.GeoPoint.geoPointEmpty
        }
        private static func parse_geoPoint(_ reader: BufferReader) -> GeoPoint? {
            var _1: Double?
            _1 = reader.readDouble()
            var _2: Double?
            _2 = reader.readDouble()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.GeoPoint.geoPoint(long: _1!, lat: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_geoPlace(_ reader: BufferReader) -> GeoPoint? {
            var _1: Double?
            _1 = reader.readDouble()
            var _2: Double?
            _2 = reader.readDouble()
            var _3: Api.GeoPlaceName?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.GeoPlaceName
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.GeoPoint.geoPlace(long: _1!, lat: _2!, name: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .geoPointEmpty:
                        return "(geoPointEmpty)"
                    case .geoPoint(let long, let lat):
                        return "(geoPoint long: \(long), lat: \(lat))"
                    case .geoPlace(let long, let lat, let name):
                        return "(geoPlace long: \(long), lat: \(lat), name: \(name))"
                }
            }
        }
    }

    public enum InputPhoneCall: CustomStringConvertible {
        case inputPhoneCall(id: Int64, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPhoneCall(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(506920429)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputPhoneCall(_ reader: BufferReader) -> InputPhoneCall? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputPhoneCall.inputPhoneCall(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPhoneCall(let id, let accessHash):
                        return "(inputPhoneCall id: \(id), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum ReceivedNotifyMessage: CustomStringConvertible {
        case receivedNotifyMessage(id: Int32, flags: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .receivedNotifyMessage(let id, let flags):
                    if boxed {
                        buffer.appendInt32(-1551583367)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_receivedNotifyMessage(_ reader: BufferReader) -> ReceivedNotifyMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ReceivedNotifyMessage.receivedNotifyMessage(id: _1!, flags: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .receivedNotifyMessage(let id, let flags):
                        return "(receivedNotifyMessage id: \(id), flags: \(flags))"
                }
            }
        }
    }

    public enum ChatParticipants: CustomStringConvertible {
        case chatParticipantsForbidden(flags: Int32, chatId: Int32, selfParticipant: Api.ChatParticipant?)
        case chatParticipants(chatId: Int32, participants: [Api.ChatParticipant], version: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatParticipantsForbidden(let flags, let chatId, let selfParticipant):
                    if boxed {
                        buffer.appendInt32(-57668565)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = selfParticipant!.serialize(buffer, true)}
                    break
                case .chatParticipants(let chatId, let participants, let version):
                    if boxed {
                        buffer.appendInt32(1061556205)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(participants.count))
                    for item in participants {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(version, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_chatParticipantsForbidden(_ reader: BufferReader) -> ChatParticipants? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.ChatParticipant?
            if Int(_1!) & Int(1 << 0) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.ChatParticipant
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChatParticipants.chatParticipantsForbidden(flags: _1!, chatId: _2!, selfParticipant: _3)
            }
            else {
                return nil
            }
        }
        private static func parse_chatParticipants(_ reader: BufferReader) -> ChatParticipants? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.ChatParticipant]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ChatParticipant.self)
            }
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.ChatParticipants.chatParticipants(chatId: _1!, participants: _2!, version: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatParticipantsForbidden(let flags, let chatId, let selfParticipant):
                        return "(chatParticipantsForbidden flags: \(flags), chatId: \(chatId), selfParticipant: \(selfParticipant))"
                    case .chatParticipants(let chatId, let participants, let version):
                        return "(chatParticipants chatId: \(chatId), participants: \(participants), version: \(version))"
                }
            }
        }
    }

    public enum NearestDc: CustomStringConvertible {
        case nearestDc(country: String, thisDc: Int32, nearestDc: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .nearestDc(let country, let thisDc, let nearestDc):
                    if boxed {
                        buffer.appendInt32(-1910892683)
                    }
                    serializeString(country, buffer: buffer, boxed: false)
                    serializeInt32(thisDc, buffer: buffer, boxed: false)
                    serializeInt32(nearestDc, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_nearestDc(_ reader: BufferReader) -> NearestDc? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.NearestDc.nearestDc(country: _1!, thisDc: _2!, nearestDc: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .nearestDc(let country, let thisDc, let nearestDc):
                        return "(nearestDc country: \(country), thisDc: \(thisDc), nearestDc: \(nearestDc))"
                }
            }
        }
    }

    public enum Bool: CustomStringConvertible {
        case boolFalse
        case boolTrue
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .boolFalse:
                    if boxed {
                        buffer.appendInt32(-1132882121)
                    }
                    
                    break
                case .boolTrue:
                    if boxed {
                        buffer.appendInt32(-1720552011)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_boolFalse(_ reader: BufferReader) -> Bool? {
            return Api.Bool.boolFalse
        }
        private static func parse_boolTrue(_ reader: BufferReader) -> Bool? {
            return Api.Bool.boolTrue
        }
    
        public var description: String {
            get {
                switch self {
                    case .boolFalse:
                        return "(boolFalse)"
                    case .boolTrue:
                        return "(boolTrue)"
                }
            }
        }
    }

    public enum MessageFwdHeader: CustomStringConvertible {
        case messageFwdHeader(flags: Int32, fromId: Int32?, date: Int32, channelId: Int32?, channelPost: Int32?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageFwdHeader(let flags, let fromId, let date, let channelId, let channelPost):
                    if boxed {
                        buffer.appendInt32(-947462709)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(fromId!, buffer: buffer, boxed: false)}
                    serializeInt32(date, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(channelId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeInt32(channelPost!, buffer: buffer, boxed: false)}
                    break
    }
    return true
    }
    
        private static func parse_messageFwdHeader(_ reader: BufferReader) -> MessageFwdHeader? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_2 = reader.readInt32() }
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = reader.readInt32() }
            var _5: Int32?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = (Int(_1!) & Int(1 << 0) == 0) || _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.MessageFwdHeader.messageFwdHeader(flags: _1!, fromId: _2, date: _3!, channelId: _4, channelPost: _5)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageFwdHeader(let flags, let fromId, let date, let channelId, let channelPost):
                        return "(messageFwdHeader flags: \(flags), fromId: \(fromId), date: \(date), channelId: \(channelId), channelPost: \(channelPost))"
                }
            }
        }
    }

    public enum ChatLocated: CustomStringConvertible {
        case chatLocated(chatId: Int32, distance: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatLocated(let chatId, let distance):
                    if boxed {
                        buffer.appendInt32(909233996)
                    }
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeInt32(distance, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_chatLocated(_ reader: BufferReader) -> ChatLocated? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ChatLocated.chatLocated(chatId: _1!, distance: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatLocated(let chatId, let distance):
                        return "(chatLocated chatId: \(chatId), distance: \(distance))"
                }
            }
        }
    }

    public enum MessagesFilter: CustomStringConvertible {
        case inputMessagesFilterEmpty
        case inputMessagesFilterPhotos
        case inputMessagesFilterVideo
        case inputMessagesFilterPhotoVideo
        case inputMessagesFilterDocument
        case inputMessagesFilterPhotoVideoDocuments
        case inputMessagesFilterVoice
        case inputMessagesFilterMusic
        case inputMessagesFilterChatPhotos
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputMessagesFilterEmpty:
                    if boxed {
                        buffer.appendInt32(1474492012)
                    }
                    
                    break
                case .inputMessagesFilterPhotos:
                    if boxed {
                        buffer.appendInt32(-1777752804)
                    }
                    
                    break
                case .inputMessagesFilterVideo:
                    if boxed {
                        buffer.appendInt32(-1614803355)
                    }
                    
                    break
                case .inputMessagesFilterPhotoVideo:
                    if boxed {
                        buffer.appendInt32(1458172132)
                    }
                    
                    break
                case .inputMessagesFilterDocument:
                    if boxed {
                        buffer.appendInt32(-1629621880)
                    }
                    
                    break
                case .inputMessagesFilterPhotoVideoDocuments:
                    if boxed {
                        buffer.appendInt32(-648121413)
                    }
                    
                    break
                case .inputMessagesFilterVoice:
                    if boxed {
                        buffer.appendInt32(1358283666)
                    }
                    
                    break
                case .inputMessagesFilterMusic:
                    if boxed {
                        buffer.appendInt32(928101534)
                    }
                    
                    break
                case .inputMessagesFilterChatPhotos:
                    if boxed {
                        buffer.appendInt32(975236280)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_inputMessagesFilterEmpty(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterEmpty
        }
        private static func parse_inputMessagesFilterPhotos(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterPhotos
        }
        private static func parse_inputMessagesFilterVideo(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterVideo
        }
        private static func parse_inputMessagesFilterPhotoVideo(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterPhotoVideo
        }
        private static func parse_inputMessagesFilterDocument(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterDocument
        }
        private static func parse_inputMessagesFilterPhotoVideoDocuments(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterPhotoVideoDocuments
        }
        private static func parse_inputMessagesFilterVoice(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterVoice
        }
        private static func parse_inputMessagesFilterMusic(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterMusic
        }
        private static func parse_inputMessagesFilterChatPhotos(_ reader: BufferReader) -> MessagesFilter? {
            return Api.MessagesFilter.inputMessagesFilterChatPhotos
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputMessagesFilterEmpty:
                        return "(inputMessagesFilterEmpty)"
                    case .inputMessagesFilterPhotos:
                        return "(inputMessagesFilterPhotos)"
                    case .inputMessagesFilterVideo:
                        return "(inputMessagesFilterVideo)"
                    case .inputMessagesFilterPhotoVideo:
                        return "(inputMessagesFilterPhotoVideo)"
                    case .inputMessagesFilterDocument:
                        return "(inputMessagesFilterDocument)"
                    case .inputMessagesFilterPhotoVideoDocuments:
                        return "(inputMessagesFilterPhotoVideoDocuments)"
                    case .inputMessagesFilterVoice:
                        return "(inputMessagesFilterVoice)"
                    case .inputMessagesFilterMusic:
                        return "(inputMessagesFilterMusic)"
                    case .inputMessagesFilterChatPhotos:
                        return "(inputMessagesFilterChatPhotos)"
                }
            }
        }
    }

    public enum ContactSuggested: CustomStringConvertible {
        case contactSuggested(userId: Int32, mutualContacts: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contactSuggested(let userId, let mutualContacts):
                    if boxed {
                        buffer.appendInt32(1038193057)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(mutualContacts, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_contactSuggested(_ reader: BufferReader) -> ContactSuggested? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ContactSuggested.contactSuggested(userId: _1!, mutualContacts: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .contactSuggested(let userId, let mutualContacts):
                        return "(contactSuggested userId: \(userId), mutualContacts: \(mutualContacts))"
                }
            }
        }
    }

    public enum BotInlineMessage: CustomStringConvertible {
        case botInlineMessageMediaAuto(flags: Int32, caption: String, replyMarkup: Api.ReplyMarkup?)
        case botInlineMessageText(flags: Int32, message: String, entities: [Api.MessageEntity]?, replyMarkup: Api.ReplyMarkup?)
        case botInlineMessageMediaGeo(flags: Int32, geo: Api.GeoPoint, replyMarkup: Api.ReplyMarkup?)
        case botInlineMessageMediaVenue(flags: Int32, geo: Api.GeoPoint, title: String, address: String, provider: String, venueId: String, replyMarkup: Api.ReplyMarkup?)
        case botInlineMessageMediaContact(flags: Int32, phoneNumber: String, firstName: String, lastName: String, replyMarkup: Api.ReplyMarkup?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .botInlineMessageMediaAuto(let flags, let caption, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(175419739)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(caption, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .botInlineMessageText(let flags, let message, let entities, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(-1937807902)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .botInlineMessageMediaGeo(let flags, let geo, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(982505656)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = geo.serialize(buffer, true)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .botInlineMessageMediaVenue(let flags, let geo, let title, let address, let provider, let venueId, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(1130767150)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = geo.serialize(buffer, true)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeString(address, buffer: buffer, boxed: false)
                    serializeString(provider, buffer: buffer, boxed: false)
                    serializeString(venueId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
                case .botInlineMessageMediaContact(let flags, let phoneNumber, let firstName, let lastName, let replyMarkup):
                    if boxed {
                        buffer.appendInt32(904770772)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    break
    }
    return true
    }
    
        private static func parse_botInlineMessageMediaAuto(_ reader: BufferReader) -> BotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 2) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.BotInlineMessage.botInlineMessageMediaAuto(flags: _1!, caption: _2!, replyMarkup: _3)
            }
            else {
                return nil
            }
        }
        private static func parse_botInlineMessageText(_ reader: BufferReader) -> BotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 1) != 0 {if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            var _4: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 2) == 0) || _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.BotInlineMessage.botInlineMessageText(flags: _1!, message: _2!, entities: _3, replyMarkup: _4)
            }
            else {
                return nil
            }
        }
        private static func parse_botInlineMessageMediaGeo(_ reader: BufferReader) -> BotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.GeoPoint?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            }
            var _3: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 2) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.BotInlineMessage.botInlineMessageMediaGeo(flags: _1!, geo: _2!, replyMarkup: _3)
            }
            else {
                return nil
            }
        }
        private static func parse_botInlineMessageMediaVenue(_ reader: BufferReader) -> BotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.GeoPoint?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.GeoPoint
            }
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            var _6: String?
            _6 = parseString(reader)
            var _7: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 2) == 0) || _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.BotInlineMessage.botInlineMessageMediaVenue(flags: _1!, geo: _2!, title: _3!, address: _4!, provider: _5!, venueId: _6!, replyMarkup: _7)
            }
            else {
                return nil
            }
        }
        private static func parse_botInlineMessageMediaContact(_ reader: BufferReader) -> BotInlineMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: Api.ReplyMarkup?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.ReplyMarkup
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.BotInlineMessage.botInlineMessageMediaContact(flags: _1!, phoneNumber: _2!, firstName: _3!, lastName: _4!, replyMarkup: _5)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .botInlineMessageMediaAuto(let flags, let caption, let replyMarkup):
                        return "(botInlineMessageMediaAuto flags: \(flags), caption: \(caption), replyMarkup: \(replyMarkup))"
                    case .botInlineMessageText(let flags, let message, let entities, let replyMarkup):
                        return "(botInlineMessageText flags: \(flags), message: \(message), entities: \(entities), replyMarkup: \(replyMarkup))"
                    case .botInlineMessageMediaGeo(let flags, let geo, let replyMarkup):
                        return "(botInlineMessageMediaGeo flags: \(flags), geo: \(geo), replyMarkup: \(replyMarkup))"
                    case .botInlineMessageMediaVenue(let flags, let geo, let title, let address, let provider, let venueId, let replyMarkup):
                        return "(botInlineMessageMediaVenue flags: \(flags), geo: \(geo), title: \(title), address: \(address), provider: \(provider), venueId: \(venueId), replyMarkup: \(replyMarkup))"
                    case .botInlineMessageMediaContact(let flags, let phoneNumber, let firstName, let lastName, let replyMarkup):
                        return "(botInlineMessageMediaContact flags: \(flags), phoneNumber: \(phoneNumber), firstName: \(firstName), lastName: \(lastName), replyMarkup: \(replyMarkup))"
                }
            }
        }
    }

    public enum InputPeerNotifySettings: CustomStringConvertible {
        case inputPeerNotifySettings(flags: Int32, muteUntil: Int32, sound: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPeerNotifySettings(let flags, let muteUntil, let sound):
                    if boxed {
                        buffer.appendInt32(949182130)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(muteUntil, buffer: buffer, boxed: false)
                    serializeString(sound, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputPeerNotifySettings(_ reader: BufferReader) -> InputPeerNotifySettings? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputPeerNotifySettings.inputPeerNotifySettings(flags: _1!, muteUntil: _2!, sound: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPeerNotifySettings(let flags, let muteUntil, let sound):
                        return "(inputPeerNotifySettings flags: \(flags), muteUntil: \(muteUntil), sound: \(sound))"
                }
            }
        }
    }

    public enum ExportedChatInvite: CustomStringConvertible {
        case chatInviteEmpty
        case chatInviteExported(link: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .chatInviteEmpty:
                    if boxed {
                        buffer.appendInt32(1776236393)
                    }
                    
                    break
                case .chatInviteExported(let link):
                    if boxed {
                        buffer.appendInt32(-64092740)
                    }
                    serializeString(link, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_chatInviteEmpty(_ reader: BufferReader) -> ExportedChatInvite? {
            return Api.ExportedChatInvite.chatInviteEmpty
        }
        private static func parse_chatInviteExported(_ reader: BufferReader) -> ExportedChatInvite? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.ExportedChatInvite.chatInviteExported(link: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .chatInviteEmpty:
                        return "(chatInviteEmpty)"
                    case .chatInviteExported(let link):
                        return "(chatInviteExported link: \(link))"
                }
            }
        }
    }

    public enum DcNetworkStats: CustomStringConvertible {
        case dcPingStats(dcId: Int32, ipAddress: String, pings: [Int32])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .dcPingStats(let dcId, let ipAddress, let pings):
                    if boxed {
                        buffer.appendInt32(839114636)
                    }
                    serializeInt32(dcId, buffer: buffer, boxed: false)
                    serializeString(ipAddress, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(pings.count))
                    for item in pings {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
    }
    return true
    }
    
        private static func parse_dcPingStats(_ reader: BufferReader) -> DcNetworkStats? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Int32]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.DcNetworkStats.dcPingStats(dcId: _1!, ipAddress: _2!, pings: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .dcPingStats(let dcId, let ipAddress, let pings):
                        return "(dcPingStats dcId: \(dcId), ipAddress: \(ipAddress), pings: \(pings))"
                }
            }
        }
    }

    public enum Authorization: CustomStringConvertible {
        case authorization(hash: Int64, flags: Int32, deviceModel: String, platform: String, systemVersion: String, apiId: Int32, appName: String, appVersion: String, dateCreated: Int32, dateActive: Int32, ip: String, country: String, region: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .authorization(let hash, let flags, let deviceModel, let platform, let systemVersion, let apiId, let appName, let appVersion, let dateCreated, let dateActive, let ip, let country, let region):
                    if boxed {
                        buffer.appendInt32(2079516406)
                    }
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(deviceModel, buffer: buffer, boxed: false)
                    serializeString(platform, buffer: buffer, boxed: false)
                    serializeString(systemVersion, buffer: buffer, boxed: false)
                    serializeInt32(apiId, buffer: buffer, boxed: false)
                    serializeString(appName, buffer: buffer, boxed: false)
                    serializeString(appVersion, buffer: buffer, boxed: false)
                    serializeInt32(dateCreated, buffer: buffer, boxed: false)
                    serializeInt32(dateActive, buffer: buffer, boxed: false)
                    serializeString(ip, buffer: buffer, boxed: false)
                    serializeString(country, buffer: buffer, boxed: false)
                    serializeString(region, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_authorization(_ reader: BufferReader) -> Authorization? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: String?
            _5 = parseString(reader)
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: String?
            _7 = parseString(reader)
            var _8: String?
            _8 = parseString(reader)
            var _9: Int32?
            _9 = reader.readInt32()
            var _10: Int32?
            _10 = reader.readInt32()
            var _11: String?
            _11 = parseString(reader)
            var _12: String?
            _12 = parseString(reader)
            var _13: String?
            _13 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            let _c9 = _9 != nil
            let _c10 = _10 != nil
            let _c11 = _11 != nil
            let _c12 = _12 != nil
            let _c13 = _13 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 {
                return Api.Authorization.authorization(hash: _1!, flags: _2!, deviceModel: _3!, platform: _4!, systemVersion: _5!, apiId: _6!, appName: _7!, appVersion: _8!, dateCreated: _9!, dateActive: _10!, ip: _11!, country: _12!, region: _13!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .authorization(let hash, let flags, let deviceModel, let platform, let systemVersion, let apiId, let appName, let appVersion, let dateCreated, let dateActive, let ip, let country, let region):
                        return "(authorization hash: \(hash), flags: \(flags), deviceModel: \(deviceModel), platform: \(platform), systemVersion: \(systemVersion), apiId: \(apiId), appName: \(appName), appVersion: \(appVersion), dateCreated: \(dateCreated), dateActive: \(dateActive), ip: \(ip), country: \(country), region: \(region))"
                }
            }
        }
    }

    public enum PhoneConnection: CustomStringConvertible {
        case phoneConnectionNotReady
        case phoneConnection(server: String, port: Int32, streamId: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .phoneConnectionNotReady:
                    if boxed {
                        buffer.appendInt32(40616899)
                    }
                    
                    break
                case .phoneConnection(let server, let port, let streamId):
                    if boxed {
                        buffer.appendInt32(981729898)
                    }
                    serializeString(server, buffer: buffer, boxed: false)
                    serializeInt32(port, buffer: buffer, boxed: false)
                    serializeInt64(streamId, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_phoneConnectionNotReady(_ reader: BufferReader) -> PhoneConnection? {
            return Api.PhoneConnection.phoneConnectionNotReady
        }
        private static func parse_phoneConnection(_ reader: BufferReader) -> PhoneConnection? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int64?
            _3 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.PhoneConnection.phoneConnection(server: _1!, port: _2!, streamId: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .phoneConnectionNotReady:
                        return "(phoneConnectionNotReady)"
                    case .phoneConnection(let server, let port, let streamId):
                        return "(phoneConnection server: \(server), port: \(port), streamId: \(streamId))"
                }
            }
        }
    }

    public enum AccountDaysTTL: CustomStringConvertible {
        case accountDaysTTL(days: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .accountDaysTTL(let days):
                    if boxed {
                        buffer.appendInt32(-1194283041)
                    }
                    serializeInt32(days, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_accountDaysTTL(_ reader: BufferReader) -> AccountDaysTTL? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.AccountDaysTTL.accountDaysTTL(days: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .accountDaysTTL(let days):
                        return "(accountDaysTTL days: \(days))"
                }
            }
        }
    }

    public enum Scheme: CustomStringConvertible {
        case scheme(schemeRaw: String, types: [Api.SchemeType], methods: [Api.SchemeMethod], version: Int32)
        case schemeNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .scheme(let schemeRaw, let types, let methods, let version):
                    if boxed {
                        buffer.appendInt32(1315894878)
                    }
                    serializeString(schemeRaw, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(types.count))
                    for item in types {
                        let _ = item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(methods.count))
                    for item in methods {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(version, buffer: buffer, boxed: false)
                    break
                case .schemeNotModified:
                    if boxed {
                        buffer.appendInt32(641506392)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_scheme(_ reader: BufferReader) -> Scheme? {
            var _1: String?
            _1 = parseString(reader)
            var _2: [Api.SchemeType]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SchemeType.self)
            }
            var _3: [Api.SchemeMethod]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SchemeMethod.self)
            }
            var _4: Int32?
            _4 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.Scheme.scheme(schemeRaw: _1!, types: _2!, methods: _3!, version: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_schemeNotModified(_ reader: BufferReader) -> Scheme? {
            return Api.Scheme.schemeNotModified
        }
    
        public var description: String {
            get {
                switch self {
                    case .scheme(let schemeRaw, let types, let methods, let version):
                        return "(scheme schemeRaw: \(schemeRaw), types: \(types), methods: \(methods), version: \(version))"
                    case .schemeNotModified:
                        return "(schemeNotModified)"
                }
            }
        }
    }

    public enum InputBotInlineResult: CustomStringConvertible {
        case inputBotInlineResult(flags: Int32, id: String, type: String, title: String?, description: String?, url: String?, thumbUrl: String?, contentUrl: String?, contentType: String?, w: Int32?, h: Int32?, duration: Int32?, sendMessage: Api.InputBotInlineMessage)
        case inputBotInlineResultPhoto(id: String, type: String, photo: Api.InputPhoto, sendMessage: Api.InputBotInlineMessage)
        case inputBotInlineResultDocument(flags: Int32, id: String, type: String, title: String?, description: String?, document: Api.InputDocument, sendMessage: Api.InputBotInlineMessage)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputBotInlineResult(let flags, let id, let type, let title, let description, let url, let thumbUrl, let contentUrl, let contentType, let w, let h, let duration, let sendMessage):
                    if boxed {
                        buffer.appendInt32(750510426)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(id, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(title!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(description!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeString(url!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 4) != 0 {serializeString(thumbUrl!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeString(contentUrl!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 5) != 0 {serializeString(contentType!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 6) != 0 {serializeInt32(w!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 6) != 0 {serializeInt32(h!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 7) != 0 {serializeInt32(duration!, buffer: buffer, boxed: false)}
                    let _ = sendMessage.serialize(buffer, true)
                    break
                case .inputBotInlineResultPhoto(let id, let type, let photo, let sendMessage):
                    if boxed {
                        buffer.appendInt32(-1462213465)
                    }
                    serializeString(id, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    let _ = photo.serialize(buffer, true)
                    let _ = sendMessage.serialize(buffer, true)
                    break
                case .inputBotInlineResultDocument(let flags, let id, let type, let title, let description, let document, let sendMessage):
                    if boxed {
                        buffer.appendInt32(-459324)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(id, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(title!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(description!, buffer: buffer, boxed: false)}
                    let _ = document.serialize(buffer, true)
                    let _ = sendMessage.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_inputBotInlineResult(_ reader: BufferReader) -> InputBotInlineResult? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = parseString(reader) }
            var _5: String?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = parseString(reader) }
            var _6: String?
            if Int(_1!) & Int(1 << 3) != 0 {_6 = parseString(reader) }
            var _7: String?
            if Int(_1!) & Int(1 << 4) != 0 {_7 = parseString(reader) }
            var _8: String?
            if Int(_1!) & Int(1 << 5) != 0 {_8 = parseString(reader) }
            var _9: String?
            if Int(_1!) & Int(1 << 5) != 0 {_9 = parseString(reader) }
            var _10: Int32?
            if Int(_1!) & Int(1 << 6) != 0 {_10 = reader.readInt32() }
            var _11: Int32?
            if Int(_1!) & Int(1 << 6) != 0 {_11 = reader.readInt32() }
            var _12: Int32?
            if Int(_1!) & Int(1 << 7) != 0 {_12 = reader.readInt32() }
            var _13: Api.InputBotInlineMessage?
            if let signature = reader.readInt32() {
                _13 = Api.parse(reader, signature: signature) as? Api.InputBotInlineMessage
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 3) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 4) == 0) || _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 5) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 5) == 0) || _9 != nil
            let _c10 = (Int(_1!) & Int(1 << 6) == 0) || _10 != nil
            let _c11 = (Int(_1!) & Int(1 << 6) == 0) || _11 != nil
            let _c12 = (Int(_1!) & Int(1 << 7) == 0) || _12 != nil
            let _c13 = _13 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 && _c11 && _c12 && _c13 {
                return Api.InputBotInlineResult.inputBotInlineResult(flags: _1!, id: _2!, type: _3!, title: _4, description: _5, url: _6, thumbUrl: _7, contentUrl: _8, contentType: _9, w: _10, h: _11, duration: _12, sendMessage: _13!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputBotInlineResultPhoto(_ reader: BufferReader) -> InputBotInlineResult? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            var _3: Api.InputPhoto?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.InputPhoto
            }
            var _4: Api.InputBotInlineMessage?
            if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.InputBotInlineMessage
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.InputBotInlineResult.inputBotInlineResultPhoto(id: _1!, type: _2!, photo: _3!, sendMessage: _4!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputBotInlineResultDocument(_ reader: BufferReader) -> InputBotInlineResult? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = parseString(reader) }
            var _5: String?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = parseString(reader) }
            var _6: Api.InputDocument?
            if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.InputDocument
            }
            var _7: Api.InputBotInlineMessage?
            if let signature = reader.readInt32() {
                _7 = Api.parse(reader, signature: signature) as? Api.InputBotInlineMessage
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.InputBotInlineResult.inputBotInlineResultDocument(flags: _1!, id: _2!, type: _3!, title: _4, description: _5, document: _6!, sendMessage: _7!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputBotInlineResult(let flags, let id, let type, let title, let description, let url, let thumbUrl, let contentUrl, let contentType, let w, let h, let duration, let sendMessage):
                        return "(inputBotInlineResult flags: \(flags), id: \(id), type: \(type), title: \(title), description: \(description), url: \(url), thumbUrl: \(thumbUrl), contentUrl: \(contentUrl), contentType: \(contentType), w: \(w), h: \(h), duration: \(duration), sendMessage: \(sendMessage))"
                    case .inputBotInlineResultPhoto(let id, let type, let photo, let sendMessage):
                        return "(inputBotInlineResultPhoto id: \(id), type: \(type), photo: \(photo), sendMessage: \(sendMessage))"
                    case .inputBotInlineResultDocument(let flags, let id, let type, let title, let description, let document, let sendMessage):
                        return "(inputBotInlineResultDocument flags: \(flags), id: \(id), type: \(type), title: \(title), description: \(description), document: \(document), sendMessage: \(sendMessage))"
                }
            }
        }
    }

    public enum PrivacyRule: CustomStringConvertible {
        case privacyValueAllowContacts
        case privacyValueAllowAll
        case privacyValueAllowUsers(users: [Int32])
        case privacyValueDisallowContacts
        case privacyValueDisallowAll
        case privacyValueDisallowUsers(users: [Int32])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .privacyValueAllowContacts:
                    if boxed {
                        buffer.appendInt32(-123988)
                    }
                    
                    break
                case .privacyValueAllowAll:
                    if boxed {
                        buffer.appendInt32(1698855810)
                    }
                    
                    break
                case .privacyValueAllowUsers(let users):
                    if boxed {
                        buffer.appendInt32(1297858060)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
                case .privacyValueDisallowContacts:
                    if boxed {
                        buffer.appendInt32(-125240806)
                    }
                    
                    break
                case .privacyValueDisallowAll:
                    if boxed {
                        buffer.appendInt32(-1955338397)
                    }
                    
                    break
                case .privacyValueDisallowUsers(let users):
                    if boxed {
                        buffer.appendInt32(209668535)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
    }
    return true
    }
    
        private static func parse_privacyValueAllowContacts(_ reader: BufferReader) -> PrivacyRule? {
            return Api.PrivacyRule.privacyValueAllowContacts
        }
        private static func parse_privacyValueAllowAll(_ reader: BufferReader) -> PrivacyRule? {
            return Api.PrivacyRule.privacyValueAllowAll
        }
        private static func parse_privacyValueAllowUsers(_ reader: BufferReader) -> PrivacyRule? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.PrivacyRule.privacyValueAllowUsers(users: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_privacyValueDisallowContacts(_ reader: BufferReader) -> PrivacyRule? {
            return Api.PrivacyRule.privacyValueDisallowContacts
        }
        private static func parse_privacyValueDisallowAll(_ reader: BufferReader) -> PrivacyRule? {
            return Api.PrivacyRule.privacyValueDisallowAll
        }
        private static func parse_privacyValueDisallowUsers(_ reader: BufferReader) -> PrivacyRule? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.PrivacyRule.privacyValueDisallowUsers(users: _1!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .privacyValueAllowContacts:
                        return "(privacyValueAllowContacts)"
                    case .privacyValueAllowAll:
                        return "(privacyValueAllowAll)"
                    case .privacyValueAllowUsers(let users):
                        return "(privacyValueAllowUsers users: \(users))"
                    case .privacyValueDisallowContacts:
                        return "(privacyValueDisallowContacts)"
                    case .privacyValueDisallowAll:
                        return "(privacyValueDisallowAll)"
                    case .privacyValueDisallowUsers(let users):
                        return "(privacyValueDisallowUsers users: \(users))"
                }
            }
        }
    }

    public enum MessageAction: CustomStringConvertible {
        case messageActionEmpty
        case messageActionChatCreate(title: String, users: [Int32])
        case messageActionChatEditTitle(title: String)
        case messageActionChatEditPhoto(photo: Api.Photo)
        case messageActionChatDeletePhoto
        case messageActionChatDeleteUser(userId: Int32)
        case messageActionChatJoinedByLink(inviterId: Int32)
        case messageActionChannelCreate(title: String)
        case messageActionChatMigrateTo(channelId: Int32)
        case messageActionChannelMigrateFrom(title: String, chatId: Int32)
        case messageActionChatAddUser(users: [Int32])
        case messageActionPinMessage
        case messageActionHistoryClear
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageActionEmpty:
                    if boxed {
                        buffer.appendInt32(-1230047312)
                    }
                    
                    break
                case .messageActionChatCreate(let title, let users):
                    if boxed {
                        buffer.appendInt32(-1503425638)
                    }
                    serializeString(title, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
                case .messageActionChatEditTitle(let title):
                    if boxed {
                        buffer.appendInt32(-1247687078)
                    }
                    serializeString(title, buffer: buffer, boxed: false)
                    break
                case .messageActionChatEditPhoto(let photo):
                    if boxed {
                        buffer.appendInt32(2144015272)
                    }
                    let _ = photo.serialize(buffer, true)
                    break
                case .messageActionChatDeletePhoto:
                    if boxed {
                        buffer.appendInt32(-1780220945)
                    }
                    
                    break
                case .messageActionChatDeleteUser(let userId):
                    if boxed {
                        buffer.appendInt32(-1297179892)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
                case .messageActionChatJoinedByLink(let inviterId):
                    if boxed {
                        buffer.appendInt32(-123931160)
                    }
                    serializeInt32(inviterId, buffer: buffer, boxed: false)
                    break
                case .messageActionChannelCreate(let title):
                    if boxed {
                        buffer.appendInt32(-1781355374)
                    }
                    serializeString(title, buffer: buffer, boxed: false)
                    break
                case .messageActionChatMigrateTo(let channelId):
                    if boxed {
                        buffer.appendInt32(1371385889)
                    }
                    serializeInt32(channelId, buffer: buffer, boxed: false)
                    break
                case .messageActionChannelMigrateFrom(let title, let chatId):
                    if boxed {
                        buffer.appendInt32(-1336546578)
                    }
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    break
                case .messageActionChatAddUser(let users):
                    if boxed {
                        buffer.appendInt32(1217033015)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
                case .messageActionPinMessage:
                    if boxed {
                        buffer.appendInt32(-1799538451)
                    }
                    
                    break
                case .messageActionHistoryClear:
                    if boxed {
                        buffer.appendInt32(-1615153660)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_messageActionEmpty(_ reader: BufferReader) -> MessageAction? {
            return Api.MessageAction.messageActionEmpty
        }
        private static func parse_messageActionChatCreate(_ reader: BufferReader) -> MessageAction? {
            var _1: String?
            _1 = parseString(reader)
            var _2: [Int32]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageAction.messageActionChatCreate(title: _1!, users: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChatEditTitle(_ reader: BufferReader) -> MessageAction? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChatEditTitle(title: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChatEditPhoto(_ reader: BufferReader) -> MessageAction? {
            var _1: Api.Photo?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Photo
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChatEditPhoto(photo: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChatDeletePhoto(_ reader: BufferReader) -> MessageAction? {
            return Api.MessageAction.messageActionChatDeletePhoto
        }
        private static func parse_messageActionChatDeleteUser(_ reader: BufferReader) -> MessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChatDeleteUser(userId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChatJoinedByLink(_ reader: BufferReader) -> MessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChatJoinedByLink(inviterId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChannelCreate(_ reader: BufferReader) -> MessageAction? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChannelCreate(title: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChatMigrateTo(_ reader: BufferReader) -> MessageAction? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChatMigrateTo(channelId: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChannelMigrateFrom(_ reader: BufferReader) -> MessageAction? {
            var _1: String?
            _1 = parseString(reader)
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageAction.messageActionChannelMigrateFrom(title: _1!, chatId: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionChatAddUser(_ reader: BufferReader) -> MessageAction? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.MessageAction.messageActionChatAddUser(users: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageActionPinMessage(_ reader: BufferReader) -> MessageAction? {
            return Api.MessageAction.messageActionPinMessage
        }
        private static func parse_messageActionHistoryClear(_ reader: BufferReader) -> MessageAction? {
            return Api.MessageAction.messageActionHistoryClear
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageActionEmpty:
                        return "(messageActionEmpty)"
                    case .messageActionChatCreate(let title, let users):
                        return "(messageActionChatCreate title: \(title), users: \(users))"
                    case .messageActionChatEditTitle(let title):
                        return "(messageActionChatEditTitle title: \(title))"
                    case .messageActionChatEditPhoto(let photo):
                        return "(messageActionChatEditPhoto photo: \(photo))"
                    case .messageActionChatDeletePhoto:
                        return "(messageActionChatDeletePhoto)"
                    case .messageActionChatDeleteUser(let userId):
                        return "(messageActionChatDeleteUser userId: \(userId))"
                    case .messageActionChatJoinedByLink(let inviterId):
                        return "(messageActionChatJoinedByLink inviterId: \(inviterId))"
                    case .messageActionChannelCreate(let title):
                        return "(messageActionChannelCreate title: \(title))"
                    case .messageActionChatMigrateTo(let channelId):
                        return "(messageActionChatMigrateTo channelId: \(channelId))"
                    case .messageActionChannelMigrateFrom(let title, let chatId):
                        return "(messageActionChannelMigrateFrom title: \(title), chatId: \(chatId))"
                    case .messageActionChatAddUser(let users):
                        return "(messageActionChatAddUser users: \(users))"
                    case .messageActionPinMessage:
                        return "(messageActionPinMessage)"
                    case .messageActionHistoryClear:
                        return "(messageActionHistoryClear)"
                }
            }
        }
    }

    public enum PhoneCall: CustomStringConvertible {
        case phoneCallEmpty(id: Int64)
        case phoneCall(id: Int64, accessHash: Int64, date: Int32, userId: Int32, calleeId: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .phoneCallEmpty(let id):
                    if boxed {
                        buffer.appendInt32(1399245077)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    break
                case .phoneCall(let id, let accessHash, let date, let userId, let calleeId):
                    if boxed {
                        buffer.appendInt32(247970787)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt32(calleeId, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_phoneCallEmpty(_ reader: BufferReader) -> PhoneCall? {
            var _1: Int64?
            _1 = reader.readInt64()
            let _c1 = _1 != nil
            if _c1 {
                return Api.PhoneCall.phoneCallEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_phoneCall(_ reader: BufferReader) -> PhoneCall? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.PhoneCall.phoneCall(id: _1!, accessHash: _2!, date: _3!, userId: _4!, calleeId: _5!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .phoneCallEmpty(let id):
                        return "(phoneCallEmpty id: \(id))"
                    case .phoneCall(let id, let accessHash, let date, let userId, let calleeId):
                        return "(phoneCall id: \(id), accessHash: \(accessHash), date: \(date), userId: \(userId), calleeId: \(calleeId))"
                }
            }
        }
    }

    public enum PeerNotifyEvents: CustomStringConvertible {
        case peerNotifyEventsEmpty
        case peerNotifyEventsAll
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .peerNotifyEventsEmpty:
                    if boxed {
                        buffer.appendInt32(-1378534221)
                    }
                    
                    break
                case .peerNotifyEventsAll:
                    if boxed {
                        buffer.appendInt32(1830677896)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_peerNotifyEventsEmpty(_ reader: BufferReader) -> PeerNotifyEvents? {
            return Api.PeerNotifyEvents.peerNotifyEventsEmpty
        }
        private static func parse_peerNotifyEventsAll(_ reader: BufferReader) -> PeerNotifyEvents? {
            return Api.PeerNotifyEvents.peerNotifyEventsAll
        }
    
        public var description: String {
            get {
                switch self {
                    case .peerNotifyEventsEmpty:
                        return "(peerNotifyEventsEmpty)"
                    case .peerNotifyEventsAll:
                        return "(peerNotifyEventsAll)"
                }
            }
        }
    }

    public enum ContactLink: CustomStringConvertible {
        case contactLinkUnknown
        case contactLinkNone
        case contactLinkHasPhone
        case contactLinkContact
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .contactLinkUnknown:
                    if boxed {
                        buffer.appendInt32(1599050311)
                    }
                    
                    break
                case .contactLinkNone:
                    if boxed {
                        buffer.appendInt32(-17968211)
                    }
                    
                    break
                case .contactLinkHasPhone:
                    if boxed {
                        buffer.appendInt32(646922073)
                    }
                    
                    break
                case .contactLinkContact:
                    if boxed {
                        buffer.appendInt32(-721239344)
                    }
                    
                    break
    }
    return true
    }
    
        private static func parse_contactLinkUnknown(_ reader: BufferReader) -> ContactLink? {
            return Api.ContactLink.contactLinkUnknown
        }
        private static func parse_contactLinkNone(_ reader: BufferReader) -> ContactLink? {
            return Api.ContactLink.contactLinkNone
        }
        private static func parse_contactLinkHasPhone(_ reader: BufferReader) -> ContactLink? {
            return Api.ContactLink.contactLinkHasPhone
        }
        private static func parse_contactLinkContact(_ reader: BufferReader) -> ContactLink? {
            return Api.ContactLink.contactLinkContact
        }
    
        public var description: String {
            get {
                switch self {
                    case .contactLinkUnknown:
                        return "(contactLinkUnknown)"
                    case .contactLinkNone:
                        return "(contactLinkNone)"
                    case .contactLinkHasPhone:
                        return "(contactLinkHasPhone)"
                    case .contactLinkContact:
                        return "(contactLinkContact)"
                }
            }
        }
    }

    public enum PeerNotifySettings: CustomStringConvertible {
        case peerNotifySettingsEmpty
        case peerNotifySettings(flags: Int32, muteUntil: Int32, sound: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .peerNotifySettingsEmpty:
                    if boxed {
                        buffer.appendInt32(1889961234)
                    }
                    
                    break
                case .peerNotifySettings(let flags, let muteUntil, let sound):
                    if boxed {
                        buffer.appendInt32(-1697798976)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(muteUntil, buffer: buffer, boxed: false)
                    serializeString(sound, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_peerNotifySettingsEmpty(_ reader: BufferReader) -> PeerNotifySettings? {
            return Api.PeerNotifySettings.peerNotifySettingsEmpty
        }
        private static func parse_peerNotifySettings(_ reader: BufferReader) -> PeerNotifySettings? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.PeerNotifySettings.peerNotifySettings(flags: _1!, muteUntil: _2!, sound: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .peerNotifySettingsEmpty:
                        return "(peerNotifySettingsEmpty)"
                    case .peerNotifySettings(let flags, let muteUntil, let sound):
                        return "(peerNotifySettings flags: \(flags), muteUntil: \(muteUntil), sound: \(sound))"
                }
            }
        }
    }

    public enum InputBotInlineMessageID: CustomStringConvertible {
        case inputBotInlineMessageID(dcId: Int32, id: Int64, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputBotInlineMessageID(let dcId, let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(-1995686519)
                    }
                    serializeInt32(dcId, buffer: buffer, boxed: false)
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputBotInlineMessageID(_ reader: BufferReader) -> InputBotInlineMessageID? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int64?
            _3 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.InputBotInlineMessageID.inputBotInlineMessageID(dcId: _1!, id: _2!, accessHash: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputBotInlineMessageID(let dcId, let id, let accessHash):
                        return "(inputBotInlineMessageID dcId: \(dcId), id: \(id), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum SchemeParam: CustomStringConvertible {
        case schemeParam(name: String, type: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .schemeParam(let name, let type):
                    if boxed {
                        buffer.appendInt32(565550063)
                    }
                    serializeString(name, buffer: buffer, boxed: false)
                    serializeString(type, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_schemeParam(_ reader: BufferReader) -> SchemeParam? {
            var _1: String?
            _1 = parseString(reader)
            var _2: String?
            _2 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.SchemeParam.schemeParam(name: _1!, type: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .schemeParam(let name, let type):
                        return "(schemeParam name: \(name), type: \(type))"
                }
            }
        }
    }

    public enum StickerPack: CustomStringConvertible {
        case stickerPack(emoticon: String, documents: [Int64])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .stickerPack(let emoticon, let documents):
                    if boxed {
                        buffer.appendInt32(313694676)
                    }
                    serializeString(emoticon, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(documents.count))
                    for item in documents {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    break
    }
    return true
    }
    
        private static func parse_stickerPack(_ reader: BufferReader) -> StickerPack? {
            var _1: String?
            _1 = parseString(reader)
            var _2: [Int64]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.StickerPack.stickerPack(emoticon: _1!, documents: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .stickerPack(let emoticon, let documents):
                        return "(stickerPack emoticon: \(emoticon), documents: \(documents))"
                }
            }
        }
    }

    public enum UserProfilePhoto: CustomStringConvertible {
        case userProfilePhotoEmpty
        case userProfilePhoto(photoId: Int64, photoSmall: Api.FileLocation, photoBig: Api.FileLocation)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .userProfilePhotoEmpty:
                    if boxed {
                        buffer.appendInt32(1326562017)
                    }
                    
                    break
                case .userProfilePhoto(let photoId, let photoSmall, let photoBig):
                    if boxed {
                        buffer.appendInt32(-715532088)
                    }
                    serializeInt64(photoId, buffer: buffer, boxed: false)
                    let _ = photoSmall.serialize(buffer, true)
                    let _ = photoBig.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_userProfilePhotoEmpty(_ reader: BufferReader) -> UserProfilePhoto? {
            return Api.UserProfilePhoto.userProfilePhotoEmpty
        }
        private static func parse_userProfilePhoto(_ reader: BufferReader) -> UserProfilePhoto? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Api.FileLocation?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.FileLocation
            }
            var _3: Api.FileLocation?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.FileLocation
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.UserProfilePhoto.userProfilePhoto(photoId: _1!, photoSmall: _2!, photoBig: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .userProfilePhotoEmpty:
                        return "(userProfilePhotoEmpty)"
                    case .userProfilePhoto(let photoId, let photoSmall, let photoBig):
                        return "(userProfilePhoto photoId: \(photoId), photoSmall: \(photoSmall), photoBig: \(photoBig))"
                }
            }
        }
    }

    public enum MessageEntity: CustomStringConvertible {
        case messageEntityUnknown(offset: Int32, length: Int32)
        case messageEntityMention(offset: Int32, length: Int32)
        case messageEntityHashtag(offset: Int32, length: Int32)
        case messageEntityBotCommand(offset: Int32, length: Int32)
        case messageEntityUrl(offset: Int32, length: Int32)
        case messageEntityEmail(offset: Int32, length: Int32)
        case messageEntityBold(offset: Int32, length: Int32)
        case messageEntityItalic(offset: Int32, length: Int32)
        case messageEntityCode(offset: Int32, length: Int32)
        case messageEntityPre(offset: Int32, length: Int32, language: String)
        case messageEntityTextUrl(offset: Int32, length: Int32, url: String)
        case messageEntityMentionName(offset: Int32, length: Int32, userId: Int32)
        case inputMessageEntityMentionName(offset: Int32, length: Int32, userId: Api.InputUser)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .messageEntityUnknown(let offset, let length):
                    if boxed {
                        buffer.appendInt32(-1148011883)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityMention(let offset, let length):
                    if boxed {
                        buffer.appendInt32(-100378723)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityHashtag(let offset, let length):
                    if boxed {
                        buffer.appendInt32(1868782349)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityBotCommand(let offset, let length):
                    if boxed {
                        buffer.appendInt32(1827637959)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityUrl(let offset, let length):
                    if boxed {
                        buffer.appendInt32(1859134776)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityEmail(let offset, let length):
                    if boxed {
                        buffer.appendInt32(1692693954)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityBold(let offset, let length):
                    if boxed {
                        buffer.appendInt32(-1117713463)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityItalic(let offset, let length):
                    if boxed {
                        buffer.appendInt32(-2106619040)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityCode(let offset, let length):
                    if boxed {
                        buffer.appendInt32(681706865)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    break
                case .messageEntityPre(let offset, let length, let language):
                    if boxed {
                        buffer.appendInt32(1938967520)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    serializeString(language, buffer: buffer, boxed: false)
                    break
                case .messageEntityTextUrl(let offset, let length, let url):
                    if boxed {
                        buffer.appendInt32(1990644519)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    serializeString(url, buffer: buffer, boxed: false)
                    break
                case .messageEntityMentionName(let offset, let length, let userId):
                    if boxed {
                        buffer.appendInt32(892193368)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    break
                case .inputMessageEntityMentionName(let offset, let length, let userId):
                    if boxed {
                        buffer.appendInt32(546203849)
                    }
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(length, buffer: buffer, boxed: false)
                    let _ = userId.serialize(buffer, true)
                    break
    }
    return true
    }
    
        private static func parse_messageEntityUnknown(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityUnknown(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityMention(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityMention(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityHashtag(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityHashtag(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityBotCommand(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityBotCommand(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityUrl(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityUrl(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityEmail(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityEmail(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityBold(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityBold(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityItalic(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityItalic(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityCode(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.MessageEntity.messageEntityCode(offset: _1!, length: _2!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityPre(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.MessageEntity.messageEntityPre(offset: _1!, length: _2!, language: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityTextUrl(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.MessageEntity.messageEntityTextUrl(offset: _1!, length: _2!, url: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_messageEntityMentionName(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.MessageEntity.messageEntityMentionName(offset: _1!, length: _2!, userId: _3!)
            }
            else {
                return nil
            }
        }
        private static func parse_inputMessageEntityMentionName(_ reader: BufferReader) -> MessageEntity? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.InputUser?
            if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.InputUser
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.MessageEntity.inputMessageEntityMentionName(offset: _1!, length: _2!, userId: _3!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .messageEntityUnknown(let offset, let length):
                        return "(messageEntityUnknown offset: \(offset), length: \(length))"
                    case .messageEntityMention(let offset, let length):
                        return "(messageEntityMention offset: \(offset), length: \(length))"
                    case .messageEntityHashtag(let offset, let length):
                        return "(messageEntityHashtag offset: \(offset), length: \(length))"
                    case .messageEntityBotCommand(let offset, let length):
                        return "(messageEntityBotCommand offset: \(offset), length: \(length))"
                    case .messageEntityUrl(let offset, let length):
                        return "(messageEntityUrl offset: \(offset), length: \(length))"
                    case .messageEntityEmail(let offset, let length):
                        return "(messageEntityEmail offset: \(offset), length: \(length))"
                    case .messageEntityBold(let offset, let length):
                        return "(messageEntityBold offset: \(offset), length: \(length))"
                    case .messageEntityItalic(let offset, let length):
                        return "(messageEntityItalic offset: \(offset), length: \(length))"
                    case .messageEntityCode(let offset, let length):
                        return "(messageEntityCode offset: \(offset), length: \(length))"
                    case .messageEntityPre(let offset, let length, let language):
                        return "(messageEntityPre offset: \(offset), length: \(length), language: \(language))"
                    case .messageEntityTextUrl(let offset, let length, let url):
                        return "(messageEntityTextUrl offset: \(offset), length: \(length), url: \(url))"
                    case .messageEntityMentionName(let offset, let length, let userId):
                        return "(messageEntityMentionName offset: \(offset), length: \(length), userId: \(userId))"
                    case .inputMessageEntityMentionName(let offset, let length, let userId):
                        return "(inputMessageEntityMentionName offset: \(offset), length: \(length), userId: \(userId))"
                }
            }
        }
    }

    public enum InputPhoto: CustomStringConvertible {
        case inputPhotoEmpty
        case inputPhoto(id: Int64, accessHash: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .inputPhotoEmpty:
                    if boxed {
                        buffer.appendInt32(483901197)
                    }
                    
                    break
                case .inputPhoto(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(-74070332)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_inputPhotoEmpty(_ reader: BufferReader) -> InputPhoto? {
            return Api.InputPhoto.inputPhotoEmpty
        }
        private static func parse_inputPhoto(_ reader: BufferReader) -> InputPhoto? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputPhoto.inputPhoto(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .inputPhotoEmpty:
                        return "(inputPhotoEmpty)"
                    case .inputPhoto(let id, let accessHash):
                        return "(inputPhoto id: \(id), accessHash: \(accessHash))"
                }
            }
        }
    }

    public enum EncryptedChat: CustomStringConvertible {
        case encryptedChatEmpty(id: Int32)
        case encryptedChatWaiting(id: Int32, accessHash: Int64, date: Int32, adminId: Int32, participantId: Int32)
        case encryptedChatDiscarded(id: Int32)
        case encryptedChatRequested(id: Int32, accessHash: Int64, date: Int32, adminId: Int32, participantId: Int32, gA: Buffer)
        case encryptedChat(id: Int32, accessHash: Int64, date: Int32, adminId: Int32, participantId: Int32, gAOrB: Buffer, keyFingerprint: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .encryptedChatEmpty(let id):
                    if boxed {
                        buffer.appendInt32(-1417756512)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    break
                case .encryptedChatWaiting(let id, let accessHash, let date, let adminId, let participantId):
                    if boxed {
                        buffer.appendInt32(1006044124)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(adminId, buffer: buffer, boxed: false)
                    serializeInt32(participantId, buffer: buffer, boxed: false)
                    break
                case .encryptedChatDiscarded(let id):
                    if boxed {
                        buffer.appendInt32(332848423)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    break
                case .encryptedChatRequested(let id, let accessHash, let date, let adminId, let participantId, let gA):
                    if boxed {
                        buffer.appendInt32(-931638658)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(adminId, buffer: buffer, boxed: false)
                    serializeInt32(participantId, buffer: buffer, boxed: false)
                    serializeBytes(gA, buffer: buffer, boxed: false)
                    break
                case .encryptedChat(let id, let accessHash, let date, let adminId, let participantId, let gAOrB, let keyFingerprint):
                    if boxed {
                        buffer.appendInt32(-94974410)
                    }
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(adminId, buffer: buffer, boxed: false)
                    serializeInt32(participantId, buffer: buffer, boxed: false)
                    serializeBytes(gAOrB, buffer: buffer, boxed: false)
                    serializeInt64(keyFingerprint, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_encryptedChatEmpty(_ reader: BufferReader) -> EncryptedChat? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.EncryptedChat.encryptedChatEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_encryptedChatWaiting(_ reader: BufferReader) -> EncryptedChat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.EncryptedChat.encryptedChatWaiting(id: _1!, accessHash: _2!, date: _3!, adminId: _4!, participantId: _5!)
            }
            else {
                return nil
            }
        }
        private static func parse_encryptedChatDiscarded(_ reader: BufferReader) -> EncryptedChat? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.EncryptedChat.encryptedChatDiscarded(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_encryptedChatRequested(_ reader: BufferReader) -> EncryptedChat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Buffer?
            _6 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.EncryptedChat.encryptedChatRequested(id: _1!, accessHash: _2!, date: _3!, adminId: _4!, participantId: _5!, gA: _6!)
            }
            else {
                return nil
            }
        }
        private static func parse_encryptedChat(_ reader: BufferReader) -> EncryptedChat? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Buffer?
            _6 = parseBytes(reader)
            var _7: Int64?
            _7 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.EncryptedChat.encryptedChat(id: _1!, accessHash: _2!, date: _3!, adminId: _4!, participantId: _5!, gAOrB: _6!, keyFingerprint: _7!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .encryptedChatEmpty(let id):
                        return "(encryptedChatEmpty id: \(id))"
                    case .encryptedChatWaiting(let id, let accessHash, let date, let adminId, let participantId):
                        return "(encryptedChatWaiting id: \(id), accessHash: \(accessHash), date: \(date), adminId: \(adminId), participantId: \(participantId))"
                    case .encryptedChatDiscarded(let id):
                        return "(encryptedChatDiscarded id: \(id))"
                    case .encryptedChatRequested(let id, let accessHash, let date, let adminId, let participantId, let gA):
                        return "(encryptedChatRequested id: \(id), accessHash: \(accessHash), date: \(date), adminId: \(adminId), participantId: \(participantId), gA: \(gA))"
                    case .encryptedChat(let id, let accessHash, let date, let adminId, let participantId, let gAOrB, let keyFingerprint):
                        return "(encryptedChat id: \(id), accessHash: \(accessHash), date: \(date), adminId: \(adminId), participantId: \(participantId), gAOrB: \(gAOrB), keyFingerprint: \(keyFingerprint))"
                }
            }
        }
    }

    public enum Document: CustomStringConvertible {
        case documentEmpty(id: Int64)
        case document(id: Int64, accessHash: Int64, date: Int32, mimeType: String, size: Int32, thumb: Api.PhotoSize, dcId: Int32, attributes: [Api.DocumentAttribute])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .documentEmpty(let id):
                    if boxed {
                        buffer.appendInt32(922273905)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    break
                case .document(let id, let accessHash, let date, let mimeType, let size, let thumb, let dcId, let attributes):
                    if boxed {
                        buffer.appendInt32(-106717361)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeString(mimeType, buffer: buffer, boxed: false)
                    serializeInt32(size, buffer: buffer, boxed: false)
                    let _ = thumb.serialize(buffer, true)
                    serializeInt32(dcId, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(attributes.count))
                    for item in attributes {
                        let _ = item.serialize(buffer, true)
                    }
                    break
    }
    return true
    }
    
        private static func parse_documentEmpty(_ reader: BufferReader) -> Document? {
            var _1: Int64?
            _1 = reader.readInt64()
            let _c1 = _1 != nil
            if _c1 {
                return Api.Document.documentEmpty(id: _1!)
            }
            else {
                return nil
            }
        }
        private static func parse_document(_ reader: BufferReader) -> Document? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: String?
            _4 = parseString(reader)
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Api.PhotoSize?
            if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.PhotoSize
            }
            var _7: Int32?
            _7 = reader.readInt32()
            var _8: [Api.DocumentAttribute]?
            if let _ = reader.readInt32() {
                _8 = Api.parseVector(reader, elementSignature: 0, elementType: Api.DocumentAttribute.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 {
                return Api.Document.document(id: _1!, accessHash: _2!, date: _3!, mimeType: _4!, size: _5!, thumb: _6!, dcId: _7!, attributes: _8!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .documentEmpty(let id):
                        return "(documentEmpty id: \(id))"
                    case .document(let id, let accessHash, let date, let mimeType, let size, let thumb, let dcId, let attributes):
                        return "(document id: \(id), accessHash: \(accessHash), date: \(date), mimeType: \(mimeType), size: \(size), thumb: \(thumb), dcId: \(dcId), attributes: \(attributes))"
                }
            }
        }
    }

    public enum ImportedContact: CustomStringConvertible {
        case importedContact(userId: Int32, clientId: Int64)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
    switch self {
                case .importedContact(let userId, let clientId):
                    if boxed {
                        buffer.appendInt32(-805141448)
                    }
                    serializeInt32(userId, buffer: buffer, boxed: false)
                    serializeInt64(clientId, buffer: buffer, boxed: false)
                    break
    }
    return true
    }
    
        private static func parse_importedContact(_ reader: BufferReader) -> ImportedContact? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.ImportedContact.importedContact(userId: _1!, clientId: _2!)
            }
            else {
                return nil
            }
        }
    
        public var description: String {
            get {
                switch self {
                    case .importedContact(let userId, let clientId):
                        return "(importedContact userId: \(userId), clientId: \(clientId))"
                }
            }
        }
    }

    public struct channels {
        public enum ChannelParticipants: CustomStringConvertible {
            case channelParticipants(count: Int32, participants: [Api.ChannelParticipant], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .channelParticipants(let count, let participants, let users):
                        if boxed {
                            buffer.appendInt32(-177282392)
                        }
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(participants.count))
                        for item in participants {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_channelParticipants(_ reader: BufferReader) -> ChannelParticipants? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.ChannelParticipant]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ChannelParticipant.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.channels.ChannelParticipants.channelParticipants(count: _1!, participants: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .channelParticipants(let count, let participants, let users):
                            return "(channels.channelParticipants count: \(count), participants: \(participants), users: \(users))"
                    }
                }
            }
        }
    
        public enum ChannelParticipant: CustomStringConvertible {
            case channelParticipant(participant: Api.ChannelParticipant, users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .channelParticipant(let participant, let users):
                        if boxed {
                            buffer.appendInt32(-791039645)
                        }
                        let _ = participant.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_channelParticipant(_ reader: BufferReader) -> ChannelParticipant? {
                var _1: Api.ChannelParticipant?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.ChannelParticipant
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.channels.ChannelParticipant.channelParticipant(participant: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .channelParticipant(let participant, let users):
                            return "(channels.channelParticipant participant: \(participant), users: \(users))"
                    }
                }
            }
        }
    }

    public struct auth {
        public enum Authorization: CustomStringConvertible {
            case authorization(user: Api.User)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .authorization(let user):
                        if boxed {
                            buffer.appendInt32(-16553231)
                        }
                        let _ = user.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_authorization(_ reader: BufferReader) -> Authorization? {
                var _1: Api.User?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.User
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.Authorization.authorization(user: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .authorization(let user):
                            return "(auth.authorization user: \(user))"
                    }
                }
            }
        }
    
        public enum PasswordRecovery: CustomStringConvertible {
            case passwordRecovery(emailPattern: String)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .passwordRecovery(let emailPattern):
                        if boxed {
                            buffer.appendInt32(326715557)
                        }
                        serializeString(emailPattern, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_passwordRecovery(_ reader: BufferReader) -> PasswordRecovery? {
                var _1: String?
                _1 = parseString(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.PasswordRecovery.passwordRecovery(emailPattern: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .passwordRecovery(let emailPattern):
                            return "(auth.passwordRecovery emailPattern: \(emailPattern))"
                    }
                }
            }
        }
    
        public enum ExportedAuthorization: CustomStringConvertible {
            case exportedAuthorization(id: Int32, bytes: Buffer)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .exportedAuthorization(let id, let bytes):
                        if boxed {
                            buffer.appendInt32(-543777747)
                        }
                        serializeInt32(id, buffer: buffer, boxed: false)
                        serializeBytes(bytes, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_exportedAuthorization(_ reader: BufferReader) -> ExportedAuthorization? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Buffer?
                _2 = parseBytes(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.auth.ExportedAuthorization.exportedAuthorization(id: _1!, bytes: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .exportedAuthorization(let id, let bytes):
                            return "(auth.exportedAuthorization id: \(id), bytes: \(bytes))"
                    }
                }
            }
        }
    
        public enum CheckedPhone: CustomStringConvertible {
            case checkedPhone(phoneRegistered: Api.Bool)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .checkedPhone(let phoneRegistered):
                        if boxed {
                            buffer.appendInt32(-2128698738)
                        }
                        let _ = phoneRegistered.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_checkedPhone(_ reader: BufferReader) -> CheckedPhone? {
                var _1: Api.Bool?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.CheckedPhone.checkedPhone(phoneRegistered: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .checkedPhone(let phoneRegistered):
                            return "(auth.checkedPhone phoneRegistered: \(phoneRegistered))"
                    }
                }
            }
        }
    
        public enum SentCode: CustomStringConvertible {
            case sentCodePreview(phoneRegistered: Api.Bool, phoneCodeHash: String, phoneCodeTest: String)
            case sentPassPhrase(phoneRegistered: Api.Bool)
            case sentCode(flags: Int32, type: Api.auth.SentCodeType, phoneCodeHash: String, nextType: Api.auth.CodeType?, timeout: Int32?)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .sentCodePreview(let phoneRegistered, let phoneCodeHash, let phoneCodeTest):
                        if boxed {
                            buffer.appendInt32(1022718586)
                        }
                        let _ = phoneRegistered.serialize(buffer, true)
                        serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                        serializeString(phoneCodeTest, buffer: buffer, boxed: false)
                        break
                    case .sentPassPhrase(let phoneRegistered):
                        if boxed {
                            buffer.appendInt32(438181806)
                        }
                        let _ = phoneRegistered.serialize(buffer, true)
                        break
                    case .sentCode(let flags, let type, let phoneCodeHash, let nextType, let timeout):
                        if boxed {
                            buffer.appendInt32(1577067778)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        let _ = type.serialize(buffer, true)
                        serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 1) != 0 {let _ = nextType!.serialize(buffer, true)}
                        if Int(flags) & Int(1 << 2) != 0 {serializeInt32(timeout!, buffer: buffer, boxed: false)}
                        break
        }
        return true
        }
        
            private static func parse_sentCodePreview(_ reader: BufferReader) -> SentCode? {
                var _1: Api.Bool?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                var _2: String?
                _2 = parseString(reader)
                var _3: String?
                _3 = parseString(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.auth.SentCode.sentCodePreview(phoneRegistered: _1!, phoneCodeHash: _2!, phoneCodeTest: _3!)
                }
                else {
                    return nil
                }
            }
            private static func parse_sentPassPhrase(_ reader: BufferReader) -> SentCode? {
                var _1: Api.Bool?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.SentCode.sentPassPhrase(phoneRegistered: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_sentCode(_ reader: BufferReader) -> SentCode? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Api.auth.SentCodeType?
                if let signature = reader.readInt32() {
                    _2 = Api.parse(reader, signature: signature) as? Api.auth.SentCodeType
                }
                var _3: String?
                _3 = parseString(reader)
                var _4: Api.auth.CodeType?
                if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                    _4 = Api.parse(reader, signature: signature) as? Api.auth.CodeType
                } }
                var _5: Int32?
                if Int(_1!) & Int(1 << 2) != 0 {_5 = reader.readInt32() }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
                let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.auth.SentCode.sentCode(flags: _1!, type: _2!, phoneCodeHash: _3!, nextType: _4, timeout: _5)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .sentCodePreview(let phoneRegistered, let phoneCodeHash, let phoneCodeTest):
                            return "(auth.sentCodePreview phoneRegistered: \(phoneRegistered), phoneCodeHash: \(phoneCodeHash), phoneCodeTest: \(phoneCodeTest))"
                        case .sentPassPhrase(let phoneRegistered):
                            return "(auth.sentPassPhrase phoneRegistered: \(phoneRegistered))"
                        case .sentCode(let flags, let type, let phoneCodeHash, let nextType, let timeout):
                            return "(auth.sentCode flags: \(flags), type: \(type), phoneCodeHash: \(phoneCodeHash), nextType: \(nextType), timeout: \(timeout))"
                    }
                }
            }
        }
    
        public enum CodeType: CustomStringConvertible {
            case codeTypeSms
            case codeTypeCall
            case codeTypeFlashCall
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .codeTypeSms:
                        if boxed {
                            buffer.appendInt32(1923290508)
                        }
                        
                        break
                    case .codeTypeCall:
                        if boxed {
                            buffer.appendInt32(1948046307)
                        }
                        
                        break
                    case .codeTypeFlashCall:
                        if boxed {
                            buffer.appendInt32(577556219)
                        }
                        
                        break
        }
        return true
        }
        
            private static func parse_codeTypeSms(_ reader: BufferReader) -> CodeType? {
                return Api.auth.CodeType.codeTypeSms
            }
            private static func parse_codeTypeCall(_ reader: BufferReader) -> CodeType? {
                return Api.auth.CodeType.codeTypeCall
            }
            private static func parse_codeTypeFlashCall(_ reader: BufferReader) -> CodeType? {
                return Api.auth.CodeType.codeTypeFlashCall
            }
        
            public var description: String {
                get {
                    switch self {
                        case .codeTypeSms:
                            return "(auth.codeTypeSms)"
                        case .codeTypeCall:
                            return "(auth.codeTypeCall)"
                        case .codeTypeFlashCall:
                            return "(auth.codeTypeFlashCall)"
                    }
                }
            }
        }
    
        public enum SentCodeType: CustomStringConvertible {
            case sentCodeTypeApp(length: Int32)
            case sentCodeTypeSms(length: Int32)
            case sentCodeTypeCall(length: Int32)
            case sentCodeTypeFlashCall(pattern: String)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .sentCodeTypeApp(let length):
                        if boxed {
                            buffer.appendInt32(1035688326)
                        }
                        serializeInt32(length, buffer: buffer, boxed: false)
                        break
                    case .sentCodeTypeSms(let length):
                        if boxed {
                            buffer.appendInt32(-1073693790)
                        }
                        serializeInt32(length, buffer: buffer, boxed: false)
                        break
                    case .sentCodeTypeCall(let length):
                        if boxed {
                            buffer.appendInt32(1398007207)
                        }
                        serializeInt32(length, buffer: buffer, boxed: false)
                        break
                    case .sentCodeTypeFlashCall(let pattern):
                        if boxed {
                            buffer.appendInt32(-1425815847)
                        }
                        serializeString(pattern, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_sentCodeTypeApp(_ reader: BufferReader) -> SentCodeType? {
                var _1: Int32?
                _1 = reader.readInt32()
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.SentCodeType.sentCodeTypeApp(length: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_sentCodeTypeSms(_ reader: BufferReader) -> SentCodeType? {
                var _1: Int32?
                _1 = reader.readInt32()
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.SentCodeType.sentCodeTypeSms(length: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_sentCodeTypeCall(_ reader: BufferReader) -> SentCodeType? {
                var _1: Int32?
                _1 = reader.readInt32()
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.SentCodeType.sentCodeTypeCall(length: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_sentCodeTypeFlashCall(_ reader: BufferReader) -> SentCodeType? {
                var _1: String?
                _1 = parseString(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.auth.SentCodeType.sentCodeTypeFlashCall(pattern: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .sentCodeTypeApp(let length):
                            return "(auth.sentCodeTypeApp length: \(length))"
                        case .sentCodeTypeSms(let length):
                            return "(auth.sentCodeTypeSms length: \(length))"
                        case .sentCodeTypeCall(let length):
                            return "(auth.sentCodeTypeCall length: \(length))"
                        case .sentCodeTypeFlashCall(let pattern):
                            return "(auth.sentCodeTypeFlashCall pattern: \(pattern))"
                    }
                }
            }
        }
    }

    public struct contacts {
        public enum Requests: CustomStringConvertible {
            case requests(requests: [Api.ContactRequest], users: [Api.User])
            case requestsSlice(count: Int32, requests: [Api.ContactRequest], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .requests(let requests, let users):
                        if boxed {
                            buffer.appendInt32(1650639724)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(requests.count))
                        for item in requests {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .requestsSlice(let count, let requests, let users):
                        if boxed {
                            buffer.appendInt32(1868061580)
                        }
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(requests.count))
                        for item in requests {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_requests(_ reader: BufferReader) -> Requests? {
                var _1: [Api.ContactRequest]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactRequest.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.contacts.Requests.requests(requests: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
            private static func parse_requestsSlice(_ reader: BufferReader) -> Requests? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.ContactRequest]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactRequest.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.Requests.requestsSlice(count: _1!, requests: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .requests(let requests, let users):
                            return "(contacts.requests requests: \(requests), users: \(users))"
                        case .requestsSlice(let count, let requests, let users):
                            return "(contacts.requestsSlice count: \(count), requests: \(requests), users: \(users))"
                    }
                }
            }
        }
    
        public enum SentLink: CustomStringConvertible {
            case sentLink(message: Api.messages.Message, link: Api.contacts.Link)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .sentLink(let message, let link):
                        if boxed {
                            buffer.appendInt32(-1767848386)
                        }
                        let _ = message.serialize(buffer, true)
                        let _ = link.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_sentLink(_ reader: BufferReader) -> SentLink? {
                var _1: Api.messages.Message?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.messages.Message
                }
                var _2: Api.contacts.Link?
                if let signature = reader.readInt32() {
                    _2 = Api.parse(reader, signature: signature) as? Api.contacts.Link
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.contacts.SentLink.sentLink(message: _1!, link: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .sentLink(let message, let link):
                            return "(contacts.sentLink message: \(message), link: \(link))"
                    }
                }
            }
        }
    
        public enum Blocked: CustomStringConvertible {
            case blocked(blocked: [Api.ContactBlocked], users: [Api.User])
            case blockedSlice(count: Int32, blocked: [Api.ContactBlocked], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .blocked(let blocked, let users):
                        if boxed {
                            buffer.appendInt32(471043349)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(blocked.count))
                        for item in blocked {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .blockedSlice(let count, let blocked, let users):
                        if boxed {
                            buffer.appendInt32(-1878523231)
                        }
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(blocked.count))
                        for item in blocked {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_blocked(_ reader: BufferReader) -> Blocked? {
                var _1: [Api.ContactBlocked]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactBlocked.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.contacts.Blocked.blocked(blocked: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
            private static func parse_blockedSlice(_ reader: BufferReader) -> Blocked? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.ContactBlocked]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactBlocked.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.Blocked.blockedSlice(count: _1!, blocked: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .blocked(let blocked, let users):
                            return "(contacts.blocked blocked: \(blocked), users: \(users))"
                        case .blockedSlice(let count, let blocked, let users):
                            return "(contacts.blockedSlice count: \(count), blocked: \(blocked), users: \(users))"
                    }
                }
            }
        }
    
        public enum Contacts: CustomStringConvertible {
            case contacts(contacts: [Api.Contact], users: [Api.User])
            case contactsNotModified
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .contacts(let contacts, let users):
                        if boxed {
                            buffer.appendInt32(1871416498)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(contacts.count))
                        for item in contacts {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .contactsNotModified:
                        if boxed {
                            buffer.appendInt32(-1219778094)
                        }
                        
                        break
        }
        return true
        }
        
            private static func parse_contacts(_ reader: BufferReader) -> Contacts? {
                var _1: [Api.Contact]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Contact.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.contacts.Contacts.contacts(contacts: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
            private static func parse_contactsNotModified(_ reader: BufferReader) -> Contacts? {
                return Api.contacts.Contacts.contactsNotModified
            }
        
            public var description: String {
                get {
                    switch self {
                        case .contacts(let contacts, let users):
                            return "(contacts.contacts contacts: \(contacts), users: \(users))"
                        case .contactsNotModified:
                            return "(contacts.contactsNotModified)"
                    }
                }
            }
        }
    
        public enum ResolvedPeer: CustomStringConvertible {
            case resolvedPeer(peer: Api.Peer, chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .resolvedPeer(let peer, let chats, let users):
                        if boxed {
                            buffer.appendInt32(2131196633)
                        }
                        let _ = peer.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_resolvedPeer(_ reader: BufferReader) -> ResolvedPeer? {
                var _1: Api.Peer?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Peer
                }
                var _2: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.ResolvedPeer.resolvedPeer(peer: _1!, chats: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .resolvedPeer(let peer, let chats, let users):
                            return "(contacts.resolvedPeer peer: \(peer), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    
        public enum MyLink: CustomStringConvertible {
            case myLinkEmpty
            case myLinkRequested(contact: Api.Bool)
            case myLinkContact
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .myLinkEmpty:
                        if boxed {
                            buffer.appendInt32(-768992160)
                        }
                        
                        break
                    case .myLinkRequested(let contact):
                        if boxed {
                            buffer.appendInt32(1818882030)
                        }
                        let _ = contact.serialize(buffer, true)
                        break
                    case .myLinkContact:
                        if boxed {
                            buffer.appendInt32(-1035932711)
                        }
                        
                        break
        }
        return true
        }
        
            private static func parse_myLinkEmpty(_ reader: BufferReader) -> MyLink? {
                return Api.contacts.MyLink.myLinkEmpty
            }
            private static func parse_myLinkRequested(_ reader: BufferReader) -> MyLink? {
                var _1: Api.Bool?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.contacts.MyLink.myLinkRequested(contact: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_myLinkContact(_ reader: BufferReader) -> MyLink? {
                return Api.contacts.MyLink.myLinkContact
            }
        
            public var description: String {
                get {
                    switch self {
                        case .myLinkEmpty:
                            return "(contacts.myLinkEmpty)"
                        case .myLinkRequested(let contact):
                            return "(contacts.myLinkRequested contact: \(contact))"
                        case .myLinkContact:
                            return "(contacts.myLinkContact)"
                    }
                }
            }
        }
    
        public enum ForeignLink: CustomStringConvertible {
            case foreignLinkUnknown
            case foreignLinkRequested(hasPhone: Api.Bool)
            case foreignLinkMutual
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .foreignLinkUnknown:
                        if boxed {
                            buffer.appendInt32(322183672)
                        }
                        
                        break
                    case .foreignLinkRequested(let hasPhone):
                        if boxed {
                            buffer.appendInt32(-1484775609)
                        }
                        let _ = hasPhone.serialize(buffer, true)
                        break
                    case .foreignLinkMutual:
                        if boxed {
                            buffer.appendInt32(468356321)
                        }
                        
                        break
        }
        return true
        }
        
            private static func parse_foreignLinkUnknown(_ reader: BufferReader) -> ForeignLink? {
                return Api.contacts.ForeignLink.foreignLinkUnknown
            }
            private static func parse_foreignLinkRequested(_ reader: BufferReader) -> ForeignLink? {
                var _1: Api.Bool?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.contacts.ForeignLink.foreignLinkRequested(hasPhone: _1!)
                }
                else {
                    return nil
                }
            }
            private static func parse_foreignLinkMutual(_ reader: BufferReader) -> ForeignLink? {
                return Api.contacts.ForeignLink.foreignLinkMutual
            }
        
            public var description: String {
                get {
                    switch self {
                        case .foreignLinkUnknown:
                            return "(contacts.foreignLinkUnknown)"
                        case .foreignLinkRequested(let hasPhone):
                            return "(contacts.foreignLinkRequested hasPhone: \(hasPhone))"
                        case .foreignLinkMutual:
                            return "(contacts.foreignLinkMutual)"
                    }
                }
            }
        }
    
        public enum Link: CustomStringConvertible {
            case link(myLink: Api.ContactLink, foreignLink: Api.ContactLink, user: Api.User)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .link(let myLink, let foreignLink, let user):
                        if boxed {
                            buffer.appendInt32(986597452)
                        }
                        let _ = myLink.serialize(buffer, true)
                        let _ = foreignLink.serialize(buffer, true)
                        let _ = user.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_link(_ reader: BufferReader) -> Link? {
                var _1: Api.ContactLink?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.ContactLink
                }
                var _2: Api.ContactLink?
                if let signature = reader.readInt32() {
                    _2 = Api.parse(reader, signature: signature) as? Api.ContactLink
                }
                var _3: Api.User?
                if let signature = reader.readInt32() {
                    _3 = Api.parse(reader, signature: signature) as? Api.User
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.Link.link(myLink: _1!, foreignLink: _2!, user: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .link(let myLink, let foreignLink, let user):
                            return "(contacts.link myLink: \(myLink), foreignLink: \(foreignLink), user: \(user))"
                    }
                }
            }
        }
    
        public enum Located: CustomStringConvertible {
            case located(results: [Api.ContactLocated], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .located(let results, let users):
                        if boxed {
                            buffer.appendInt32(-1428687705)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(results.count))
                        for item in results {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_located(_ reader: BufferReader) -> Located? {
                var _1: [Api.ContactLocated]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactLocated.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.contacts.Located.located(results: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .located(let results, let users):
                            return "(contacts.located results: \(results), users: \(users))"
                    }
                }
            }
        }
    
        public enum Suggested: CustomStringConvertible {
            case suggested(results: [Api.ContactSuggested], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .suggested(let results, let users):
                        if boxed {
                            buffer.appendInt32(1447681221)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(results.count))
                        for item in results {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_suggested(_ reader: BufferReader) -> Suggested? {
                var _1: [Api.ContactSuggested]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactSuggested.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.contacts.Suggested.suggested(results: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .suggested(let results, let users):
                            return "(contacts.suggested results: \(results), users: \(users))"
                    }
                }
            }
        }
    
        public enum ImportedContacts: CustomStringConvertible {
            case importedContacts(imported: [Api.ImportedContact], retryContacts: [Int64], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .importedContacts(let imported, let retryContacts, let users):
                        if boxed {
                            buffer.appendInt32(-1387117803)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(imported.count))
                        for item in imported {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(retryContacts.count))
                        for item in retryContacts {
                            serializeInt64(item, buffer: buffer, boxed: false)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_importedContacts(_ reader: BufferReader) -> ImportedContacts? {
                var _1: [Api.ImportedContact]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ImportedContact.self)
                }
                var _2: [Int64]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.ImportedContacts.importedContacts(imported: _1!, retryContacts: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .importedContacts(let imported, let retryContacts, let users):
                            return "(contacts.importedContacts imported: \(imported), retryContacts: \(retryContacts), users: \(users))"
                    }
                }
            }
        }
    
        public enum Found: CustomStringConvertible {
            case found(results: [Api.Peer], chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .found(let results, let chats, let users):
                        if boxed {
                            buffer.appendInt32(446822276)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(results.count))
                        for item in results {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_found(_ reader: BufferReader) -> Found? {
                var _1: [Api.Peer]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Peer.self)
                }
                var _2: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.Found.found(results: _1!, chats: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .found(let results, let chats, let users):
                            return "(contacts.found results: \(results), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    
        public enum TopPeers: CustomStringConvertible {
            case topPeersNotModified
            case topPeers(categories: [Api.TopPeerCategoryPeers], chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .topPeersNotModified:
                        if boxed {
                            buffer.appendInt32(-567906571)
                        }
                        
                        break
                    case .topPeers(let categories, let chats, let users):
                        if boxed {
                            buffer.appendInt32(1891070632)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(categories.count))
                        for item in categories {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_topPeersNotModified(_ reader: BufferReader) -> TopPeers? {
                return Api.contacts.TopPeers.topPeersNotModified
            }
            private static func parse_topPeers(_ reader: BufferReader) -> TopPeers? {
                var _1: [Api.TopPeerCategoryPeers]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.TopPeerCategoryPeers.self)
                }
                var _2: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.contacts.TopPeers.topPeers(categories: _1!, chats: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .topPeersNotModified:
                            return "(contacts.topPeersNotModified)"
                        case .topPeers(let categories, let chats, let users):
                            return "(contacts.topPeers categories: \(categories), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    }

    public struct help {
        public enum AppUpdate: CustomStringConvertible {
            case appUpdate(id: Int32, critical: Api.Bool, url: String, text: String)
            case noAppUpdate
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .appUpdate(let id, let critical, let url, let text):
                        if boxed {
                            buffer.appendInt32(-1987579119)
                        }
                        serializeInt32(id, buffer: buffer, boxed: false)
                        let _ = critical.serialize(buffer, true)
                        serializeString(url, buffer: buffer, boxed: false)
                        serializeString(text, buffer: buffer, boxed: false)
                        break
                    case .noAppUpdate:
                        if boxed {
                            buffer.appendInt32(-1000708810)
                        }
                        
                        break
        }
        return true
        }
        
            private static func parse_appUpdate(_ reader: BufferReader) -> AppUpdate? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Api.Bool?
                if let signature = reader.readInt32() {
                    _2 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                var _3: String?
                _3 = parseString(reader)
                var _4: String?
                _4 = parseString(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                if _c1 && _c2 && _c3 && _c4 {
                    return Api.help.AppUpdate.appUpdate(id: _1!, critical: _2!, url: _3!, text: _4!)
                }
                else {
                    return nil
                }
            }
            private static func parse_noAppUpdate(_ reader: BufferReader) -> AppUpdate? {
                return Api.help.AppUpdate.noAppUpdate
            }
        
            public var description: String {
                get {
                    switch self {
                        case .appUpdate(let id, let critical, let url, let text):
                            return "(help.appUpdate id: \(id), critical: \(critical), url: \(url), text: \(text))"
                        case .noAppUpdate:
                            return "(help.noAppUpdate)"
                    }
                }
            }
        }
    
        public enum AppChangelog: CustomStringConvertible {
            case appChangelogEmpty
            case appChangelog(text: String)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .appChangelogEmpty:
                        if boxed {
                            buffer.appendInt32(-1350696044)
                        }
                        
                        break
                    case .appChangelog(let text):
                        if boxed {
                            buffer.appendInt32(1181279933)
                        }
                        serializeString(text, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_appChangelogEmpty(_ reader: BufferReader) -> AppChangelog? {
                return Api.help.AppChangelog.appChangelogEmpty
            }
            private static func parse_appChangelog(_ reader: BufferReader) -> AppChangelog? {
                var _1: String?
                _1 = parseString(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.help.AppChangelog.appChangelog(text: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .appChangelogEmpty:
                            return "(help.appChangelogEmpty)"
                        case .appChangelog(let text):
                            return "(help.appChangelog text: \(text))"
                    }
                }
            }
        }
    
        public enum Support: CustomStringConvertible {
            case support(phoneNumber: String, user: Api.User)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .support(let phoneNumber, let user):
                        if boxed {
                            buffer.appendInt32(398898678)
                        }
                        serializeString(phoneNumber, buffer: buffer, boxed: false)
                        let _ = user.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_support(_ reader: BufferReader) -> Support? {
                var _1: String?
                _1 = parseString(reader)
                var _2: Api.User?
                if let signature = reader.readInt32() {
                    _2 = Api.parse(reader, signature: signature) as? Api.User
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.help.Support.support(phoneNumber: _1!, user: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .support(let phoneNumber, let user):
                            return "(help.support phoneNumber: \(phoneNumber), user: \(user))"
                    }
                }
            }
        }
    
        public enum InviteText: CustomStringConvertible {
            case inviteText(message: String)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .inviteText(let message):
                        if boxed {
                            buffer.appendInt32(415997816)
                        }
                        serializeString(message, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_inviteText(_ reader: BufferReader) -> InviteText? {
                var _1: String?
                _1 = parseString(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.help.InviteText.inviteText(message: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .inviteText(let message):
                            return "(help.inviteText message: \(message))"
                    }
                }
            }
        }
    
        public enum AppPrefs: CustomStringConvertible {
            case appPrefs(bytes: Buffer)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .appPrefs(let bytes):
                        if boxed {
                            buffer.appendInt32(1112507924)
                        }
                        serializeBytes(bytes, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_appPrefs(_ reader: BufferReader) -> AppPrefs? {
                var _1: Buffer?
                _1 = parseBytes(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.help.AppPrefs.appPrefs(bytes: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .appPrefs(let bytes):
                            return "(help.appPrefs bytes: \(bytes))"
                    }
                }
            }
        }
    }

    public struct updates {
        public enum Difference: CustomStringConvertible {
            case differenceEmpty(date: Int32, seq: Int32)
            case difference(newMessages: [Api.Message], newEncryptedMessages: [Api.EncryptedMessage], otherUpdates: [Api.Update], chats: [Api.Chat], users: [Api.User], state: Api.updates.State)
            case differenceSlice(newMessages: [Api.Message], newEncryptedMessages: [Api.EncryptedMessage], otherUpdates: [Api.Update], chats: [Api.Chat], users: [Api.User], intermediateState: Api.updates.State)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .differenceEmpty(let date, let seq):
                        if boxed {
                            buffer.appendInt32(1567990072)
                        }
                        serializeInt32(date, buffer: buffer, boxed: false)
                        serializeInt32(seq, buffer: buffer, boxed: false)
                        break
                    case .difference(let newMessages, let newEncryptedMessages, let otherUpdates, let chats, let users, let state):
                        if boxed {
                            buffer.appendInt32(16030880)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(newMessages.count))
                        for item in newMessages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(newEncryptedMessages.count))
                        for item in newEncryptedMessages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(otherUpdates.count))
                        for item in otherUpdates {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        let _ = state.serialize(buffer, true)
                        break
                    case .differenceSlice(let newMessages, let newEncryptedMessages, let otherUpdates, let chats, let users, let intermediateState):
                        if boxed {
                            buffer.appendInt32(-1459938943)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(newMessages.count))
                        for item in newMessages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(newEncryptedMessages.count))
                        for item in newEncryptedMessages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(otherUpdates.count))
                        for item in otherUpdates {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        let _ = intermediateState.serialize(buffer, true)
                        break
        }
        return true
        }
        
            private static func parse_differenceEmpty(_ reader: BufferReader) -> Difference? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.updates.Difference.differenceEmpty(date: _1!, seq: _2!)
                }
                else {
                    return nil
                }
            }
            private static func parse_difference(_ reader: BufferReader) -> Difference? {
                var _1: [Api.Message]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _2: [Api.EncryptedMessage]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.EncryptedMessage.self)
                }
                var _3: [Api.Update]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Update.self)
                }
                var _4: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _5: [Api.User]?
                if let _ = reader.readInt32() {
                    _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                var _6: Api.updates.State?
                if let signature = reader.readInt32() {
                    _6 = Api.parse(reader, signature: signature) as? Api.updates.State
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                let _c6 = _6 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                    return Api.updates.Difference.difference(newMessages: _1!, newEncryptedMessages: _2!, otherUpdates: _3!, chats: _4!, users: _5!, state: _6!)
                }
                else {
                    return nil
                }
            }
            private static func parse_differenceSlice(_ reader: BufferReader) -> Difference? {
                var _1: [Api.Message]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _2: [Api.EncryptedMessage]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.EncryptedMessage.self)
                }
                var _3: [Api.Update]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Update.self)
                }
                var _4: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _5: [Api.User]?
                if let _ = reader.readInt32() {
                    _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                var _6: Api.updates.State?
                if let signature = reader.readInt32() {
                    _6 = Api.parse(reader, signature: signature) as? Api.updates.State
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                let _c6 = _6 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                    return Api.updates.Difference.differenceSlice(newMessages: _1!, newEncryptedMessages: _2!, otherUpdates: _3!, chats: _4!, users: _5!, intermediateState: _6!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .differenceEmpty(let date, let seq):
                            return "(updates.differenceEmpty date: \(date), seq: \(seq))"
                        case .difference(let newMessages, let newEncryptedMessages, let otherUpdates, let chats, let users, let state):
                            return "(updates.difference newMessages: \(newMessages), newEncryptedMessages: \(newEncryptedMessages), otherUpdates: \(otherUpdates), chats: \(chats), users: \(users), state: \(state))"
                        case .differenceSlice(let newMessages, let newEncryptedMessages, let otherUpdates, let chats, let users, let intermediateState):
                            return "(updates.differenceSlice newMessages: \(newMessages), newEncryptedMessages: \(newEncryptedMessages), otherUpdates: \(otherUpdates), chats: \(chats), users: \(users), intermediateState: \(intermediateState))"
                    }
                }
            }
        }
    
        public enum State: CustomStringConvertible {
            case state(pts: Int32, qts: Int32, date: Int32, seq: Int32, unreadCount: Int32)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .state(let pts, let qts, let date, let seq, let unreadCount):
                        if boxed {
                            buffer.appendInt32(-1519637954)
                        }
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        serializeInt32(qts, buffer: buffer, boxed: false)
                        serializeInt32(date, buffer: buffer, boxed: false)
                        serializeInt32(seq, buffer: buffer, boxed: false)
                        serializeInt32(unreadCount, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_state(_ reader: BufferReader) -> State? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Int32?
                _3 = reader.readInt32()
                var _4: Int32?
                _4 = reader.readInt32()
                var _5: Int32?
                _5 = reader.readInt32()
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.updates.State.state(pts: _1!, qts: _2!, date: _3!, seq: _4!, unreadCount: _5!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .state(let pts, let qts, let date, let seq, let unreadCount):
                            return "(updates.state pts: \(pts), qts: \(qts), date: \(date), seq: \(seq), unreadCount: \(unreadCount))"
                    }
                }
            }
        }
    
        public enum ChannelDifference: CustomStringConvertible {
            case channelDifferenceEmpty(flags: Int32, pts: Int32, timeout: Int32?)
            case channelDifference(flags: Int32, pts: Int32, timeout: Int32?, newMessages: [Api.Message], otherUpdates: [Api.Update], chats: [Api.Chat], users: [Api.User])
            case channelDifferenceTooLong(flags: Int32, pts: Int32, timeout: Int32?, topMessage: Int32, readInboxMaxId: Int32, readOutboxMaxId: Int32, unreadCount: Int32, messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .channelDifferenceEmpty(let flags, let pts, let timeout):
                        if boxed {
                            buffer.appendInt32(1041346555)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 1) != 0 {serializeInt32(timeout!, buffer: buffer, boxed: false)}
                        break
                    case .channelDifference(let flags, let pts, let timeout, let newMessages, let otherUpdates, let chats, let users):
                        if boxed {
                            buffer.appendInt32(543450958)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 1) != 0 {serializeInt32(timeout!, buffer: buffer, boxed: false)}
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(newMessages.count))
                        for item in newMessages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(otherUpdates.count))
                        for item in otherUpdates {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .channelDifferenceTooLong(let flags, let pts, let timeout, let topMessage, let readInboxMaxId, let readOutboxMaxId, let unreadCount, let messages, let chats, let users):
                        if boxed {
                            buffer.appendInt32(1091431943)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        serializeInt32(pts, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 1) != 0 {serializeInt32(timeout!, buffer: buffer, boxed: false)}
                        serializeInt32(topMessage, buffer: buffer, boxed: false)
                        serializeInt32(readInboxMaxId, buffer: buffer, boxed: false)
                        serializeInt32(readOutboxMaxId, buffer: buffer, boxed: false)
                        serializeInt32(unreadCount, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(messages.count))
                        for item in messages {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(chats.count))
                        for item in chats {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_channelDifferenceEmpty(_ reader: BufferReader) -> ChannelDifference? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Int32?
                if Int(_1!) & Int(1 << 1) != 0 {_3 = reader.readInt32() }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.updates.ChannelDifference.channelDifferenceEmpty(flags: _1!, pts: _2!, timeout: _3)
                }
                else {
                    return nil
                }
            }
            private static func parse_channelDifference(_ reader: BufferReader) -> ChannelDifference? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Int32?
                if Int(_1!) & Int(1 << 1) != 0 {_3 = reader.readInt32() }
                var _4: [Api.Message]?
                if let _ = reader.readInt32() {
                    _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _5: [Api.Update]?
                if let _ = reader.readInt32() {
                    _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Update.self)
                }
                var _6: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _6 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _7: [Api.User]?
                if let _ = reader.readInt32() {
                    _7 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                let _c6 = _6 != nil
                let _c7 = _7 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                    return Api.updates.ChannelDifference.channelDifference(flags: _1!, pts: _2!, timeout: _3, newMessages: _4!, otherUpdates: _5!, chats: _6!, users: _7!)
                }
                else {
                    return nil
                }
            }
            private static func parse_channelDifferenceTooLong(_ reader: BufferReader) -> ChannelDifference? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Int32?
                if Int(_1!) & Int(1 << 1) != 0 {_3 = reader.readInt32() }
                var _4: Int32?
                _4 = reader.readInt32()
                var _5: Int32?
                _5 = reader.readInt32()
                var _6: Int32?
                _6 = reader.readInt32()
                var _7: Int32?
                _7 = reader.readInt32()
                var _8: [Api.Message]?
                if let _ = reader.readInt32() {
                    _8 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
                }
                var _9: [Api.Chat]?
                if let _ = reader.readInt32() {
                    _9 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
                }
                var _10: [Api.User]?
                if let _ = reader.readInt32() {
                    _10 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                let _c6 = _6 != nil
                let _c7 = _7 != nil
                let _c8 = _8 != nil
                let _c9 = _9 != nil
                let _c10 = _10 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 && _c10 {
                    return Api.updates.ChannelDifference.channelDifferenceTooLong(flags: _1!, pts: _2!, timeout: _3, topMessage: _4!, readInboxMaxId: _5!, readOutboxMaxId: _6!, unreadCount: _7!, messages: _8!, chats: _9!, users: _10!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .channelDifferenceEmpty(let flags, let pts, let timeout):
                            return "(updates.channelDifferenceEmpty flags: \(flags), pts: \(pts), timeout: \(timeout))"
                        case .channelDifference(let flags, let pts, let timeout, let newMessages, let otherUpdates, let chats, let users):
                            return "(updates.channelDifference flags: \(flags), pts: \(pts), timeout: \(timeout), newMessages: \(newMessages), otherUpdates: \(otherUpdates), chats: \(chats), users: \(users))"
                        case .channelDifferenceTooLong(let flags, let pts, let timeout, let topMessage, let readInboxMaxId, let readOutboxMaxId, let unreadCount, let messages, let chats, let users):
                            return "(updates.channelDifferenceTooLong flags: \(flags), pts: \(pts), timeout: \(timeout), topMessage: \(topMessage), readInboxMaxId: \(readInboxMaxId), readOutboxMaxId: \(readOutboxMaxId), unreadCount: \(unreadCount), messages: \(messages), chats: \(chats), users: \(users))"
                    }
                }
            }
        }
    }

    public struct upload {
        public enum File: CustomStringConvertible {
            case file(type: Api.storage.FileType, mtime: Int32, bytes: Buffer)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .file(let type, let mtime, let bytes):
                        if boxed {
                            buffer.appendInt32(157948117)
                        }
                        let _ = type.serialize(buffer, true)
                        serializeInt32(mtime, buffer: buffer, boxed: false)
                        serializeBytes(bytes, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_file(_ reader: BufferReader) -> File? {
                var _1: Api.storage.FileType?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.storage.FileType
                }
                var _2: Int32?
                _2 = reader.readInt32()
                var _3: Buffer?
                _3 = parseBytes(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.upload.File.file(type: _1!, mtime: _2!, bytes: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .file(let type, let mtime, let bytes):
                            return "(upload.file type: \(type), mtime: \(mtime), bytes: \(bytes))"
                    }
                }
            }
        }
    }

    public struct storage {
        public enum FileType: CustomStringConvertible {
            case fileUnknown
            case fileJpeg
            case fileGif
            case filePng
            case filePdf
            case fileMp3
            case fileMov
            case filePartial
            case fileMp4
            case fileWebp
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .fileUnknown:
                        if boxed {
                            buffer.appendInt32(-1432995067)
                        }
                        
                        break
                    case .fileJpeg:
                        if boxed {
                            buffer.appendInt32(8322574)
                        }
                        
                        break
                    case .fileGif:
                        if boxed {
                            buffer.appendInt32(-891180321)
                        }
                        
                        break
                    case .filePng:
                        if boxed {
                            buffer.appendInt32(172975040)
                        }
                        
                        break
                    case .filePdf:
                        if boxed {
                            buffer.appendInt32(-1373745011)
                        }
                        
                        break
                    case .fileMp3:
                        if boxed {
                            buffer.appendInt32(1384777335)
                        }
                        
                        break
                    case .fileMov:
                        if boxed {
                            buffer.appendInt32(1258941372)
                        }
                        
                        break
                    case .filePartial:
                        if boxed {
                            buffer.appendInt32(1086091090)
                        }
                        
                        break
                    case .fileMp4:
                        if boxed {
                            buffer.appendInt32(-1278304028)
                        }
                        
                        break
                    case .fileWebp:
                        if boxed {
                            buffer.appendInt32(276907596)
                        }
                        
                        break
        }
        return true
        }
        
            private static func parse_fileUnknown(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileUnknown
            }
            private static func parse_fileJpeg(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileJpeg
            }
            private static func parse_fileGif(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileGif
            }
            private static func parse_filePng(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.filePng
            }
            private static func parse_filePdf(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.filePdf
            }
            private static func parse_fileMp3(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileMp3
            }
            private static func parse_fileMov(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileMov
            }
            private static func parse_filePartial(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.filePartial
            }
            private static func parse_fileMp4(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileMp4
            }
            private static func parse_fileWebp(_ reader: BufferReader) -> FileType? {
                return Api.storage.FileType.fileWebp
            }
        
            public var description: String {
                get {
                    switch self {
                        case .fileUnknown:
                            return "(storage.fileUnknown)"
                        case .fileJpeg:
                            return "(storage.fileJpeg)"
                        case .fileGif:
                            return "(storage.fileGif)"
                        case .filePng:
                            return "(storage.filePng)"
                        case .filePdf:
                            return "(storage.filePdf)"
                        case .fileMp3:
                            return "(storage.fileMp3)"
                        case .fileMov:
                            return "(storage.fileMov)"
                        case .filePartial:
                            return "(storage.filePartial)"
                        case .fileMp4:
                            return "(storage.fileMp4)"
                        case .fileWebp:
                            return "(storage.fileWebp)"
                    }
                }
            }
        }
    }

    public struct account {
        public enum PasswordSettings: CustomStringConvertible {
            case passwordSettings(email: String)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .passwordSettings(let email):
                        if boxed {
                            buffer.appendInt32(-1212732749)
                        }
                        serializeString(email, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_passwordSettings(_ reader: BufferReader) -> PasswordSettings? {
                var _1: String?
                _1 = parseString(reader)
                let _c1 = _1 != nil
                if _c1 {
                    return Api.account.PasswordSettings.passwordSettings(email: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .passwordSettings(let email):
                            return "(account.passwordSettings email: \(email))"
                    }
                }
            }
        }
    
        public enum PasswordInputSettings: CustomStringConvertible {
            case passwordInputSettings(flags: Int32, newSalt: Buffer?, newPasswordHash: Buffer?, hint: String?, email: String?)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .passwordInputSettings(let flags, let newSalt, let newPasswordHash, let hint, let email):
                        if boxed {
                            buffer.appendInt32(-2037289493)
                        }
                        serializeInt32(flags, buffer: buffer, boxed: false)
                        if Int(flags) & Int(1 << 0) != 0 {serializeBytes(newSalt!, buffer: buffer, boxed: false)}
                        if Int(flags) & Int(1 << 0) != 0 {serializeBytes(newPasswordHash!, buffer: buffer, boxed: false)}
                        if Int(flags) & Int(1 << 0) != 0 {serializeString(hint!, buffer: buffer, boxed: false)}
                        if Int(flags) & Int(1 << 1) != 0 {serializeString(email!, buffer: buffer, boxed: false)}
                        break
        }
        return true
        }
        
            private static func parse_passwordInputSettings(_ reader: BufferReader) -> PasswordInputSettings? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: Buffer?
                if Int(_1!) & Int(1 << 0) != 0 {_2 = parseBytes(reader) }
                var _3: Buffer?
                if Int(_1!) & Int(1 << 0) != 0 {_3 = parseBytes(reader) }
                var _4: String?
                if Int(_1!) & Int(1 << 0) != 0 {_4 = parseString(reader) }
                var _5: String?
                if Int(_1!) & Int(1 << 1) != 0 {_5 = parseString(reader) }
                let _c1 = _1 != nil
                let _c2 = (Int(_1!) & Int(1 << 0) == 0) || _2 != nil
                let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
                let _c4 = (Int(_1!) & Int(1 << 0) == 0) || _4 != nil
                let _c5 = (Int(_1!) & Int(1 << 1) == 0) || _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.account.PasswordInputSettings.passwordInputSettings(flags: _1!, newSalt: _2, newPasswordHash: _3, hint: _4, email: _5)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .passwordInputSettings(let flags, let newSalt, let newPasswordHash, let hint, let email):
                            return "(account.passwordInputSettings flags: \(flags), newSalt: \(newSalt), newPasswordHash: \(newPasswordHash), hint: \(hint), email: \(email))"
                    }
                }
            }
        }
    
        public enum Authorizations: CustomStringConvertible {
            case authorizations(authorizations: [Api.Authorization])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .authorizations(let authorizations):
                        if boxed {
                            buffer.appendInt32(307276766)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(authorizations.count))
                        for item in authorizations {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_authorizations(_ reader: BufferReader) -> Authorizations? {
                var _1: [Api.Authorization]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Authorization.self)
                }
                let _c1 = _1 != nil
                if _c1 {
                    return Api.account.Authorizations.authorizations(authorizations: _1!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .authorizations(let authorizations):
                            return "(account.authorizations authorizations: \(authorizations))"
                    }
                }
            }
        }
    
        public enum Password: CustomStringConvertible {
            case noPassword(newSalt: Buffer, emailUnconfirmedPattern: String)
            case password(currentSalt: Buffer, newSalt: Buffer, hint: String, hasRecovery: Api.Bool, emailUnconfirmedPattern: String)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .noPassword(let newSalt, let emailUnconfirmedPattern):
                        if boxed {
                            buffer.appendInt32(-1764049896)
                        }
                        serializeBytes(newSalt, buffer: buffer, boxed: false)
                        serializeString(emailUnconfirmedPattern, buffer: buffer, boxed: false)
                        break
                    case .password(let currentSalt, let newSalt, let hint, let hasRecovery, let emailUnconfirmedPattern):
                        if boxed {
                            buffer.appendInt32(2081952796)
                        }
                        serializeBytes(currentSalt, buffer: buffer, boxed: false)
                        serializeBytes(newSalt, buffer: buffer, boxed: false)
                        serializeString(hint, buffer: buffer, boxed: false)
                        let _ = hasRecovery.serialize(buffer, true)
                        serializeString(emailUnconfirmedPattern, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_noPassword(_ reader: BufferReader) -> Password? {
                var _1: Buffer?
                _1 = parseBytes(reader)
                var _2: String?
                _2 = parseString(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.account.Password.noPassword(newSalt: _1!, emailUnconfirmedPattern: _2!)
                }
                else {
                    return nil
                }
            }
            private static func parse_password(_ reader: BufferReader) -> Password? {
                var _1: Buffer?
                _1 = parseBytes(reader)
                var _2: Buffer?
                _2 = parseBytes(reader)
                var _3: String?
                _3 = parseString(reader)
                var _4: Api.Bool?
                if let signature = reader.readInt32() {
                    _4 = Api.parse(reader, signature: signature) as? Api.Bool
                }
                var _5: String?
                _5 = parseString(reader)
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                let _c5 = _5 != nil
                if _c1 && _c2 && _c3 && _c4 && _c5 {
                    return Api.account.Password.password(currentSalt: _1!, newSalt: _2!, hint: _3!, hasRecovery: _4!, emailUnconfirmedPattern: _5!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .noPassword(let newSalt, let emailUnconfirmedPattern):
                            return "(account.noPassword newSalt: \(newSalt), emailUnconfirmedPattern: \(emailUnconfirmedPattern))"
                        case .password(let currentSalt, let newSalt, let hint, let hasRecovery, let emailUnconfirmedPattern):
                            return "(account.password currentSalt: \(currentSalt), newSalt: \(newSalt), hint: \(hint), hasRecovery: \(hasRecovery), emailUnconfirmedPattern: \(emailUnconfirmedPattern))"
                    }
                }
            }
        }
    
        public enum PrivacyRules: CustomStringConvertible {
            case privacyRules(rules: [Api.PrivacyRule], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .privacyRules(let rules, let users):
                        if boxed {
                            buffer.appendInt32(1430961007)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(rules.count))
                        for item in rules {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_privacyRules(_ reader: BufferReader) -> PrivacyRules? {
                var _1: [Api.PrivacyRule]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PrivacyRule.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.account.PrivacyRules.privacyRules(rules: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .privacyRules(let rules, let users):
                            return "(account.privacyRules rules: \(rules), users: \(users))"
                    }
                }
            }
        }
    }

    public struct photos {
        public enum Photo: CustomStringConvertible {
            case photo(photo: Api.Photo, users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .photo(let photo, let users):
                        if boxed {
                            buffer.appendInt32(539045032)
                        }
                        let _ = photo.serialize(buffer, true)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_photo(_ reader: BufferReader) -> Photo? {
                var _1: Api.Photo?
                if let signature = reader.readInt32() {
                    _1 = Api.parse(reader, signature: signature) as? Api.Photo
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.photos.Photo.photo(photo: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .photo(let photo, let users):
                            return "(photos.photo photo: \(photo), users: \(users))"
                    }
                }
            }
        }
    
        public enum Photos: CustomStringConvertible {
            case photos(photos: [Api.Photo], users: [Api.User])
            case photosSlice(count: Int32, photos: [Api.Photo], users: [Api.User])
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .photos(let photos, let users):
                        if boxed {
                            buffer.appendInt32(-1916114267)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(photos.count))
                        for item in photos {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
                    case .photosSlice(let count, let photos, let users):
                        if boxed {
                            buffer.appendInt32(352657236)
                        }
                        serializeInt32(count, buffer: buffer, boxed: false)
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(photos.count))
                        for item in photos {
                            let _ = item.serialize(buffer, true)
                        }
                        buffer.appendInt32(481674261)
                        buffer.appendInt32(Int32(users.count))
                        for item in users {
                            let _ = item.serialize(buffer, true)
                        }
                        break
        }
        return true
        }
        
            private static func parse_photos(_ reader: BufferReader) -> Photos? {
                var _1: [Api.Photo]?
                if let _ = reader.readInt32() {
                    _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Photo.self)
                }
                var _2: [Api.User]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                if _c1 && _c2 {
                    return Api.photos.Photos.photos(photos: _1!, users: _2!)
                }
                else {
                    return nil
                }
            }
            private static func parse_photosSlice(_ reader: BufferReader) -> Photos? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: [Api.Photo]?
                if let _ = reader.readInt32() {
                    _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Photo.self)
                }
                var _3: [Api.User]?
                if let _ = reader.readInt32() {
                    _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                }
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                if _c1 && _c2 && _c3 {
                    return Api.photos.Photos.photosSlice(count: _1!, photos: _2!, users: _3!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .photos(let photos, let users):
                            return "(photos.photos photos: \(photos), users: \(users))"
                        case .photosSlice(let count, let photos, let users):
                            return "(photos.photosSlice count: \(count), photos: \(photos), users: \(users))"
                    }
                }
            }
        }
    }

    public struct phone {
        public enum DhConfig: CustomStringConvertible {
            case dhConfig(g: Int32, p: String, ringTimeout: Int32, expires: Int32)
        
        public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) -> Swift.Bool {
        switch self {
                    case .dhConfig(let g, let p, let ringTimeout, let expires):
                        if boxed {
                            buffer.appendInt32(-1973582498)
                        }
                        serializeInt32(g, buffer: buffer, boxed: false)
                        serializeString(p, buffer: buffer, boxed: false)
                        serializeInt32(ringTimeout, buffer: buffer, boxed: false)
                        serializeInt32(expires, buffer: buffer, boxed: false)
                        break
        }
        return true
        }
        
            private static func parse_dhConfig(_ reader: BufferReader) -> DhConfig? {
                var _1: Int32?
                _1 = reader.readInt32()
                var _2: String?
                _2 = parseString(reader)
                var _3: Int32?
                _3 = reader.readInt32()
                var _4: Int32?
                _4 = reader.readInt32()
                let _c1 = _1 != nil
                let _c2 = _2 != nil
                let _c3 = _3 != nil
                let _c4 = _4 != nil
                if _c1 && _c2 && _c3 && _c4 {
                    return Api.phone.DhConfig.dhConfig(g: _1!, p: _2!, ringTimeout: _3!, expires: _4!)
                }
                else {
                    return nil
                }
            }
        
            public var description: String {
                get {
                    switch self {
                        case .dhConfig(let g, let p, let ringTimeout, let expires):
                            return "(phone.dhConfig g: \(g), p: \(p), ringTimeout: \(ringTimeout), expires: \(expires))"
                    }
                }
            }
        }
    }

    public struct functions {
            public struct messages {
                public static func getMessages(id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Messages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1109588596)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(messages.getMessages id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.Messages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Messages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Messages
                        }
                        return result
                    })
                }
            
                public static func restoreMessages(id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> [Int32]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(962567550)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(messages.restoreMessages id: \(id))"}), buffer, { (buffer: Buffer) -> [Int32]? in
                        let reader = BufferReader(buffer)
                        var result: [Int32]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
                        }
                        return result
                    })
                }
            
                public static func getChats(id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Chats?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1013621127)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(messages.getChats id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.Chats? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Chats?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Chats
                        }
                        return result
                    })
                }
            
                public static func getFullChat(chatId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.ChatFull?) {
                    let buffer = Buffer()
                    buffer.appendInt32(998448230)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getFullChat chatId: \(chatId))"}), buffer, { (buffer: Buffer) -> Api.messages.ChatFull? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.ChatFull?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.ChatFull
                        }
                        return result
                    })
                }
            
                public static func getDhConfig(version: Int32, randomLength: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.DhConfig?) {
                    let buffer = Buffer()
                    buffer.appendInt32(651135312)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    serializeInt32(randomLength, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getDhConfig version: \(version), randomLength: \(randomLength))"}), buffer, { (buffer: Buffer) -> Api.messages.DhConfig? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.DhConfig?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.DhConfig
                        }
                        return result
                    })
                }
            
                public static func requestEncryption(userId: Api.InputUser, randomId: Int32, gA: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.EncryptedChat?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-162681021)
                    let _ = userId.serialize(buffer, true)
                    serializeInt32(randomId, buffer: buffer, boxed: false)
                    serializeBytes(gA, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.requestEncryption userId: \(userId), randomId: \(randomId), gA: \(gA))"}), buffer, { (buffer: Buffer) -> Api.EncryptedChat? in
                        let reader = BufferReader(buffer)
                        var result: Api.EncryptedChat?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.EncryptedChat
                        }
                        return result
                    })
                }
            
                public static func acceptEncryption(peer: Api.InputEncryptedChat, gB: Buffer, keyFingerprint: Int64) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.EncryptedChat?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1035731989)
                    let _ = peer.serialize(buffer, true)
                    serializeBytes(gB, buffer: buffer, boxed: false)
                    serializeInt64(keyFingerprint, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.acceptEncryption peer: \(peer), gB: \(gB), keyFingerprint: \(keyFingerprint))"}), buffer, { (buffer: Buffer) -> Api.EncryptedChat? in
                        let reader = BufferReader(buffer)
                        var result: Api.EncryptedChat?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.EncryptedChat
                        }
                        return result
                    })
                }
            
                public static func discardEncryption(chatId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-304536635)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.discardEncryption chatId: \(chatId))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func setEncryptedTyping(peer: Api.InputEncryptedChat, typing: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(2031374829)
                    let _ = peer.serialize(buffer, true)
                    let _ = typing.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.setEncryptedTyping peer: \(peer), typing: \(typing))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func readEncryptedHistory(peer: Api.InputEncryptedChat, maxDate: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(2135648522)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(maxDate, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.readEncryptedHistory peer: \(peer), maxDate: \(maxDate))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func sendEncrypted(peer: Api.InputEncryptedChat, randomId: Int64, data: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.SentEncryptedMessage?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1451792525)
                    let _ = peer.serialize(buffer, true)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.sendEncrypted peer: \(peer), randomId: \(randomId), data: \(data))"}), buffer, { (buffer: Buffer) -> Api.messages.SentEncryptedMessage? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.SentEncryptedMessage?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.SentEncryptedMessage
                        }
                        return result
                    })
                }
            
                public static func sendEncryptedFile(peer: Api.InputEncryptedChat, randomId: Int64, data: Buffer, file: Api.InputEncryptedFile) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.SentEncryptedMessage?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1701831834)
                    let _ = peer.serialize(buffer, true)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    let _ = file.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.sendEncryptedFile peer: \(peer), randomId: \(randomId), data: \(data), file: \(file))"}), buffer, { (buffer: Buffer) -> Api.messages.SentEncryptedMessage? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.SentEncryptedMessage?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.SentEncryptedMessage
                        }
                        return result
                    })
                }
            
                public static func sendEncryptedService(peer: Api.InputEncryptedChat, randomId: Int64, data: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.SentEncryptedMessage?) {
                    let buffer = Buffer()
                    buffer.appendInt32(852769188)
                    let _ = peer.serialize(buffer, true)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.sendEncryptedService peer: \(peer), randomId: \(randomId), data: \(data))"}), buffer, { (buffer: Buffer) -> Api.messages.SentEncryptedMessage? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.SentEncryptedMessage?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.SentEncryptedMessage
                        }
                        return result
                    })
                }
            
                public static func receivedQueue(maxQts: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> [Int64]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1436924774)
                    serializeInt32(maxQts, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.receivedQueue maxQts: \(maxQts))"}), buffer, { (buffer: Buffer) -> [Int64]? in
                        let reader = BufferReader(buffer)
                        var result: [Int64]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
                        }
                        return result
                    })
                }
            
                public static func setTyping(peer: Api.InputPeer, action: Api.SendMessageAction) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1551737264)
                    let _ = peer.serialize(buffer, true)
                    let _ = action.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.setTyping peer: \(peer), action: \(action))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getStickers(emoticon: String, hash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Stickers?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1373446075)
                    serializeString(emoticon, buffer: buffer, boxed: false)
                    serializeString(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getStickers emoticon: \(emoticon), hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.messages.Stickers? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Stickers?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Stickers
                        }
                        return result
                    })
                }
            
                public static func deleteMessages(id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AffectedMessages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1510897371)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(messages.deleteMessages id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.AffectedMessages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AffectedMessages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AffectedMessages
                        }
                        return result
                    })
                }
            
                public static func readMessageContents(id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AffectedMessages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(916930423)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(messages.readMessageContents id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.AffectedMessages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AffectedMessages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AffectedMessages
                        }
                        return result
                    })
                }
            
                public static func editChatTitle(chatId: Int32, title: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-599447467)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.editChatTitle chatId: \(chatId), title: \(title))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func editChatPhoto(chatId: Int32, photo: Api.InputChatPhoto) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-900957736)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    let _ = photo.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.editChatPhoto chatId: \(chatId), photo: \(photo))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func addChatUser(chatId: Int32, userId: Api.InputUser, fwdLimit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-106911223)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    let _ = userId.serialize(buffer, true)
                    serializeInt32(fwdLimit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.addChatUser chatId: \(chatId), userId: \(userId), fwdLimit: \(fwdLimit))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func deleteChatUser(chatId: Int32, userId: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-530505962)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    let _ = userId.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.deleteChatUser chatId: \(chatId), userId: \(userId))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func createChat(users: [Api.InputUser], title: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(164303470)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeString(title, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.createChat users: \(users), title: \(title))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func sendBroadcast(contacts: [Api.InputUser], randomId: [Int64], message: String, media: Api.InputMedia) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1082919718)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(contacts.count))
                    for item in contacts {
                        let _ = item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(randomId.count))
                    for item in randomId {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    serializeString(message, buffer: buffer, boxed: false)
                    let _ = media.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.sendBroadcast contacts: \(contacts), randomId: \(randomId), message: \(message), media: \(media))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func getWebPagePreview(message: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.MessageMedia?) {
                    let buffer = Buffer()
                    buffer.appendInt32(623001124)
                    serializeString(message, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getWebPagePreview message: \(message))"}), buffer, { (buffer: Buffer) -> Api.MessageMedia? in
                        let reader = BufferReader(buffer)
                        var result: Api.MessageMedia?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.MessageMedia
                        }
                        return result
                    })
                }
            
                public static func forwardMessage(peer: Api.InputPeer, id: Int32, randomId: Int64) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(865483769)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.forwardMessage peer: \(peer), id: \(id), randomId: \(randomId))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func receivedMessages(maxId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> [Api.ReceivedNotifyMessage]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(94983360)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.receivedMessages maxId: \(maxId))"}), buffer, { (buffer: Buffer) -> [Api.ReceivedNotifyMessage]? in
                        let reader = BufferReader(buffer)
                        var result: [Api.ReceivedNotifyMessage]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 0, elementType: Api.ReceivedNotifyMessage.self)
                        }
                        return result
                    })
                }
            
                public static func exportChatInvite(chatId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.ExportedChatInvite?) {
                    let buffer = Buffer()
                    buffer.appendInt32(2106086025)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.exportChatInvite chatId: \(chatId))"}), buffer, { (buffer: Buffer) -> Api.ExportedChatInvite? in
                        let reader = BufferReader(buffer)
                        var result: Api.ExportedChatInvite?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.ExportedChatInvite
                        }
                        return result
                    })
                }
            
                public static func checkChatInvite(hash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.ChatInvite?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1051570619)
                    serializeString(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.checkChatInvite hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.ChatInvite? in
                        let reader = BufferReader(buffer)
                        var result: Api.ChatInvite?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.ChatInvite
                        }
                        return result
                    })
                }
            
                public static func importChatInvite(hash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1817183516)
                    serializeString(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.importChatInvite hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func getStickerSet(stickerset: Api.InputStickerSet) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.StickerSet?) {
                    let buffer = Buffer()
                    buffer.appendInt32(639215886)
                    let _ = stickerset.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.getStickerSet stickerset: \(stickerset))"}), buffer, { (buffer: Buffer) -> Api.messages.StickerSet? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.StickerSet?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.StickerSet
                        }
                        return result
                    })
                }
            
                public static func uninstallStickerSet(stickerset: Api.InputStickerSet) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-110209570)
                    let _ = stickerset.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.uninstallStickerSet stickerset: \(stickerset))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func installStickerSet(stickerset: Api.InputStickerSet, disabled: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(2066793382)
                    let _ = stickerset.serialize(buffer, true)
                    let _ = disabled.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.installStickerSet stickerset: \(stickerset), disabled: \(disabled))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func search(flags: Int32, peer: Api.InputPeer, q: String, filter: Api.MessagesFilter, minDate: Int32, maxDate: Int32, offset: Int32, maxId: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Messages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-732523960)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    serializeString(q, buffer: buffer, boxed: false)
                    let _ = filter.serialize(buffer, true)
                    serializeInt32(minDate, buffer: buffer, boxed: false)
                    serializeInt32(maxDate, buffer: buffer, boxed: false)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.search flags: \(flags), peer: \(peer), q: \(q), filter: \(filter), minDate: \(minDate), maxDate: \(maxDate), offset: \(offset), maxId: \(maxId), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.messages.Messages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Messages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Messages
                        }
                        return result
                    })
                }
            
                public static func getMessagesViews(peer: Api.InputPeer, id: [Int32], increment: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> [Int32]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-993483427)
                    let _ = peer.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    let _ = increment.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.getMessagesViews peer: \(peer), id: \(id), increment: \(increment))"}), buffer, { (buffer: Buffer) -> [Int32]? in
                        let reader = BufferReader(buffer)
                        var result: [Int32]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
                        }
                        return result
                    })
                }
            
                public static func toggleChatAdmins(chatId: Int32, enabled: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-326379039)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    let _ = enabled.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.toggleChatAdmins chatId: \(chatId), enabled: \(enabled))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func editChatAdmin(chatId: Int32, userId: Api.InputUser, isAdmin: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1444503762)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    let _ = userId.serialize(buffer, true)
                    let _ = isAdmin.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.editChatAdmin chatId: \(chatId), userId: \(userId), isAdmin: \(isAdmin))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func deleteHistory(peer: Api.InputPeer, maxId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AffectedHistory?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1212072999)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.deleteHistory peer: \(peer), maxId: \(maxId))"}), buffer, { (buffer: Buffer) -> Api.messages.AffectedHistory? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AffectedHistory?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AffectedHistory
                        }
                        return result
                    })
                }
            
                public static func readHistory(peer: Api.InputPeer, maxId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AffectedMessages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(238054714)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.readHistory peer: \(peer), maxId: \(maxId))"}), buffer, { (buffer: Buffer) -> Api.messages.AffectedMessages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AffectedMessages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AffectedMessages
                        }
                        return result
                    })
                }
            
                public static func migrateChat(chatId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(363051235)
                    serializeInt32(chatId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.migrateChat chatId: \(chatId))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func searchGlobal(q: String, offsetDate: Int32, offsetPeer: Api.InputPeer, offsetId: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Messages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1640190800)
                    serializeString(q, buffer: buffer, boxed: false)
                    serializeInt32(offsetDate, buffer: buffer, boxed: false)
                    let _ = offsetPeer.serialize(buffer, true)
                    serializeInt32(offsetId, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.searchGlobal q: \(q), offsetDate: \(offsetDate), offsetPeer: \(offsetPeer), offsetId: \(offsetId), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.messages.Messages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Messages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Messages
                        }
                        return result
                    })
                }
            
                public static func startBot(bot: Api.InputUser, peer: Api.InputPeer, randomId: Int64, startParam: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-421563528)
                    let _ = bot.serialize(buffer, true)
                    let _ = peer.serialize(buffer, true)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeString(startParam, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.startBot bot: \(bot), peer: \(peer), randomId: \(randomId), startParam: \(startParam))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func getDialogs(offsetDate: Int32, offsetId: Int32, offsetPeer: Api.InputPeer, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Dialogs?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1799878989)
                    serializeInt32(offsetDate, buffer: buffer, boxed: false)
                    serializeInt32(offsetId, buffer: buffer, boxed: false)
                    let _ = offsetPeer.serialize(buffer, true)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getDialogs offsetDate: \(offsetDate), offsetId: \(offsetId), offsetPeer: \(offsetPeer), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.messages.Dialogs? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Dialogs?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Dialogs
                        }
                        return result
                    })
                }
            
                public static func getAllStickers(hash: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AllStickers?) {
                    let buffer = Buffer()
                    buffer.appendInt32(479598769)
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getAllStickers hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.messages.AllStickers? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AllStickers?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AllStickers
                        }
                        return result
                    })
                }
            
                public static func reorderStickerSets(order: [Int64]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1613775824)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(order.count))
                    for item in order {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(messages.reorderStickerSets order: \(order))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getDocumentByHash(sha256: Buffer, size: Int32, mimeType: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Document?) {
                    let buffer = Buffer()
                    buffer.appendInt32(864953444)
                    serializeBytes(sha256, buffer: buffer, boxed: false)
                    serializeInt32(size, buffer: buffer, boxed: false)
                    serializeString(mimeType, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getDocumentByHash sha256: \(sha256), size: \(size), mimeType: \(mimeType))"}), buffer, { (buffer: Buffer) -> Api.Document? in
                        let reader = BufferReader(buffer)
                        var result: Api.Document?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Document
                        }
                        return result
                    })
                }
            
                public static func searchGifs(q: String, offset: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.FoundGifs?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1080395925)
                    serializeString(q, buffer: buffer, boxed: false)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.searchGifs q: \(q), offset: \(offset))"}), buffer, { (buffer: Buffer) -> Api.messages.FoundGifs? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.FoundGifs?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.FoundGifs
                        }
                        return result
                    })
                }
            
                public static func getSavedGifs(hash: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.SavedGifs?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-2084618926)
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getSavedGifs hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.messages.SavedGifs? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.SavedGifs?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.SavedGifs
                        }
                        return result
                    })
                }
            
                public static func saveGif(id: Api.InputDocument, unsave: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(846868683)
                    let _ = id.serialize(buffer, true)
                    let _ = unsave.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.saveGif id: \(id), unsave: \(unsave))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getHistory(peer: Api.InputPeer, offsetId: Int32, offsetDate: Int32, addOffset: Int32, limit: Int32, maxId: Int32, minId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Messages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1347868602)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(offsetId, buffer: buffer, boxed: false)
                    serializeInt32(offsetDate, buffer: buffer, boxed: false)
                    serializeInt32(addOffset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(minId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getHistory peer: \(peer), offsetId: \(offsetId), offsetDate: \(offsetDate), addOffset: \(addOffset), limit: \(limit), maxId: \(maxId), minId: \(minId))"}), buffer, { (buffer: Buffer) -> Api.messages.Messages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Messages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Messages
                        }
                        return result
                    })
                }
            
                public static func sendMessage(flags: Int32, peer: Api.InputPeer, replyToMsgId: Int32?, message: String, randomId: Int64, replyMarkup: Api.ReplyMarkup?, entities: [Api.MessageEntity]?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-91733382)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    serializeString(message, buffer: buffer, boxed: false)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    return (FunctionDescription({return "(messages.sendMessage flags: \(flags), peer: \(peer), replyToMsgId: \(replyToMsgId), message: \(message), randomId: \(randomId), replyMarkup: \(replyMarkup), entities: \(entities))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func sendMedia(flags: Int32, peer: Api.InputPeer, replyToMsgId: Int32?, media: Api.InputMedia, randomId: Int64, replyMarkup: Api.ReplyMarkup?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-923703407)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    let _ = media.serialize(buffer, true)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    return (FunctionDescription({return "(messages.sendMedia flags: \(flags), peer: \(peer), replyToMsgId: \(replyToMsgId), media: \(media), randomId: \(randomId), replyMarkup: \(replyMarkup))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func sendInlineBotResult(flags: Int32, peer: Api.InputPeer, replyToMsgId: Int32?, randomId: Int64, queryId: Int64, id: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1318189314)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeInt64(queryId, buffer: buffer, boxed: false)
                    serializeString(id, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.sendInlineBotResult flags: \(flags), peer: \(peer), replyToMsgId: \(replyToMsgId), randomId: \(randomId), queryId: \(queryId), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func forwardMessages(flags: Int32, fromPeer: Api.InputPeer, id: [Int32], randomId: [Int64], toPeer: Api.InputPeer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1888354709)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = fromPeer.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(randomId.count))
                    for item in randomId {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    let _ = toPeer.serialize(buffer, true)
                    return (FunctionDescription({return "(messages.forwardMessages flags: \(flags), fromPeer: \(fromPeer), id: \(id), randomId: \(randomId), toPeer: \(toPeer))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func getInlineBotResults(flags: Int32, bot: Api.InputUser, peer: Api.InputPeer, geoPoint: Api.InputGeoPoint?, query: String, offset: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.BotResults?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1364105629)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = bot.serialize(buffer, true)
                    let _ = peer.serialize(buffer, true)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = geoPoint!.serialize(buffer, true)}
                    serializeString(query, buffer: buffer, boxed: false)
                    serializeString(offset, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getInlineBotResults flags: \(flags), bot: \(bot), peer: \(peer), geoPoint: \(geoPoint), query: \(query), offset: \(offset))"}), buffer, { (buffer: Buffer) -> Api.messages.BotResults? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.BotResults?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.BotResults
                        }
                        return result
                    })
                }
            
                public static func getMessageEditData(peer: Api.InputPeer, id: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.MessageEditData?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-39416522)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getMessageEditData peer: \(peer), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.MessageEditData? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.MessageEditData?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.MessageEditData
                        }
                        return result
                    })
                }
            
                public static func editMessage(flags: Int32, peer: Api.InputPeer, id: Int32, message: String?, replyMarkup: Api.ReplyMarkup?, entities: [Api.MessageEntity]?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-829299510)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 11) != 0 {serializeString(message!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    return (FunctionDescription({return "(messages.editMessage flags: \(flags), peer: \(peer), id: \(id), message: \(message), replyMarkup: \(replyMarkup), entities: \(entities))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func editInlineBotMessage(flags: Int32, id: Api.InputBotInlineMessageID, message: String?, replyMarkup: Api.ReplyMarkup?, entities: [Api.MessageEntity]?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(319564933)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = id.serialize(buffer, true)
                    if Int(flags) & Int(1 << 11) != 0 {serializeString(message!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {let _ = replyMarkup!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    return (FunctionDescription({return "(messages.editInlineBotMessage flags: \(flags), id: \(id), message: \(message), replyMarkup: \(replyMarkup), entities: \(entities))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getBotCallbackAnswer(peer: Api.InputPeer, msgId: Int32, data: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.BotCallbackAnswer?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1494659324)
                    let _ = peer.serialize(buffer, true)
                    serializeInt32(msgId, buffer: buffer, boxed: false)
                    serializeBytes(data, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(messages.getBotCallbackAnswer peer: \(peer), msgId: \(msgId), data: \(data))"}), buffer, { (buffer: Buffer) -> Api.messages.BotCallbackAnswer? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.BotCallbackAnswer?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.BotCallbackAnswer
                        }
                        return result
                    })
                }
            
                public static func setBotCallbackAnswer(flags: Int32, queryId: Int64, message: String?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1209817370)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt64(queryId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeString(message!, buffer: buffer, boxed: false)}
                    return (FunctionDescription({return "(messages.setBotCallbackAnswer flags: \(flags), queryId: \(queryId), message: \(message))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func setInlineBotResults(flags: Int32, queryId: Int64, results: [Api.InputBotInlineResult], cacheTime: Int32, nextOffset: String?, switchPm: Api.InlineBotSwitchPM?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-346119674)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt64(queryId, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(results.count))
                    for item in results {
                        let _ = item.serialize(buffer, true)
                    }
                    serializeInt32(cacheTime, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(nextOffset!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {let _ = switchPm!.serialize(buffer, true)}
                    return (FunctionDescription({return "(messages.setInlineBotResults flags: \(flags), queryId: \(queryId), results: \(results), cacheTime: \(cacheTime), nextOffset: \(nextOffset), switchPm: \(switchPm))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getPeerDialogs(peers: [Api.InputPeer]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.PeerDialogs?) {
                    let buffer = Buffer()
                    buffer.appendInt32(764901049)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(peers.count))
                    for item in peers {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(messages.getPeerDialogs peers: \(peers))"}), buffer, { (buffer: Buffer) -> Api.messages.PeerDialogs? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.PeerDialogs?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.PeerDialogs
                        }
                        return result
                    })
                }
            
                public static func saveDraft(flags: Int32, replyToMsgId: Int32?, peer: Api.InputPeer, message: String, entities: [Api.MessageEntity]?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1137057461)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(replyToMsgId!, buffer: buffer, boxed: false)}
                    let _ = peer.serialize(buffer, true)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    return (FunctionDescription({return "(messages.saveDraft flags: \(flags), replyToMsgId: \(replyToMsgId), peer: \(peer), message: \(message), entities: \(entities))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getAllDrafts() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1782549861)
                    
                    return (FunctionDescription({return "(messages.getAllDrafts )"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            }
            public struct channels {
                public static func getDialogs(offset: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Dialogs?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1445735863)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.getDialogs offset: \(offset), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.messages.Dialogs? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Dialogs?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Dialogs
                        }
                        return result
                    })
                }
            
                public static func readHistory(channel: Api.InputChannel, maxId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-871347913)
                    let _ = channel.serialize(buffer, true)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.readHistory channel: \(channel), maxId: \(maxId))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func deleteMessages(channel: Api.InputChannel, id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AffectedMessages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-2067661490)
                    let _ = channel.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(channels.deleteMessages channel: \(channel), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.AffectedMessages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AffectedMessages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AffectedMessages
                        }
                        return result
                    })
                }
            
                public static func deleteUserHistory(channel: Api.InputChannel, userId: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.AffectedHistory?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-787622117)
                    let _ = channel.serialize(buffer, true)
                    let _ = userId.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.deleteUserHistory channel: \(channel), userId: \(userId))"}), buffer, { (buffer: Buffer) -> Api.messages.AffectedHistory? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.AffectedHistory?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.AffectedHistory
                        }
                        return result
                    })
                }
            
                public static func reportSpam(channel: Api.InputChannel, userId: Api.InputUser, id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-32999408)
                    let _ = channel.serialize(buffer, true)
                    let _ = userId.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(channels.reportSpam channel: \(channel), userId: \(userId), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getMessages(channel: Api.InputChannel, id: [Int32]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Messages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1814580409)
                    let _ = channel.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    return (FunctionDescription({return "(channels.getMessages channel: \(channel), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.Messages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Messages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Messages
                        }
                        return result
                    })
                }
            
                public static func getParticipants(channel: Api.InputChannel, filter: Api.ChannelParticipantsFilter, offset: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.channels.ChannelParticipants?) {
                    let buffer = Buffer()
                    buffer.appendInt32(618237842)
                    let _ = channel.serialize(buffer, true)
                    let _ = filter.serialize(buffer, true)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.getParticipants channel: \(channel), filter: \(filter), offset: \(offset), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.channels.ChannelParticipants? in
                        let reader = BufferReader(buffer)
                        var result: Api.channels.ChannelParticipants?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.channels.ChannelParticipants
                        }
                        return result
                    })
                }
            
                public static func getParticipant(channel: Api.InputChannel, userId: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.channels.ChannelParticipant?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1416484774)
                    let _ = channel.serialize(buffer, true)
                    let _ = userId.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.getParticipant channel: \(channel), userId: \(userId))"}), buffer, { (buffer: Buffer) -> Api.channels.ChannelParticipant? in
                        let reader = BufferReader(buffer)
                        var result: Api.channels.ChannelParticipant?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.channels.ChannelParticipant
                        }
                        return result
                    })
                }
            
                public static func getChannels(id: [Api.InputChannel]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Chats?) {
                    let buffer = Buffer()
                    buffer.appendInt32(176122811)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(channels.getChannels id: \(id))"}), buffer, { (buffer: Buffer) -> Api.messages.Chats? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Chats?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Chats
                        }
                        return result
                    })
                }
            
                public static func getFullChannel(channel: Api.InputChannel) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.ChatFull?) {
                    let buffer = Buffer()
                    buffer.appendInt32(141781513)
                    let _ = channel.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.getFullChannel channel: \(channel))"}), buffer, { (buffer: Buffer) -> Api.messages.ChatFull? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.ChatFull?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.ChatFull
                        }
                        return result
                    })
                }
            
                public static func editAbout(channel: Api.InputChannel, about: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(333610782)
                    let _ = channel.serialize(buffer, true)
                    serializeString(about, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.editAbout channel: \(channel), about: \(about))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func editAdmin(channel: Api.InputChannel, userId: Api.InputUser, role: Api.ChannelParticipantRole) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1387358562)
                    let _ = channel.serialize(buffer, true)
                    let _ = userId.serialize(buffer, true)
                    let _ = role.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.editAdmin channel: \(channel), userId: \(userId), role: \(role))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func editTitle(channel: Api.InputChannel, title: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1450044624)
                    let _ = channel.serialize(buffer, true)
                    serializeString(title, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.editTitle channel: \(channel), title: \(title))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func editPhoto(channel: Api.InputChannel, photo: Api.InputChatPhoto) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-248621111)
                    let _ = channel.serialize(buffer, true)
                    let _ = photo.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.editPhoto channel: \(channel), photo: \(photo))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func toggleComments(channel: Api.InputChannel, enabled: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1432183160)
                    let _ = channel.serialize(buffer, true)
                    let _ = enabled.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.toggleComments channel: \(channel), enabled: \(enabled))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func checkUsername(channel: Api.InputChannel, username: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(283557164)
                    let _ = channel.serialize(buffer, true)
                    serializeString(username, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.checkUsername channel: \(channel), username: \(username))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func updateUsername(channel: Api.InputChannel, username: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(890549214)
                    let _ = channel.serialize(buffer, true)
                    serializeString(username, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.updateUsername channel: \(channel), username: \(username))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func joinChannel(channel: Api.InputChannel) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(615851205)
                    let _ = channel.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.joinChannel channel: \(channel))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func leaveChannel(channel: Api.InputChannel) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-130635115)
                    let _ = channel.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.leaveChannel channel: \(channel))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func inviteToChannel(channel: Api.InputChannel, users: [Api.InputUser]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(429865580)
                    let _ = channel.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(channels.inviteToChannel channel: \(channel), users: \(users))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func kickFromChannel(channel: Api.InputChannel, userId: Api.InputUser, kicked: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1502421484)
                    let _ = channel.serialize(buffer, true)
                    let _ = userId.serialize(buffer, true)
                    let _ = kicked.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.kickFromChannel channel: \(channel), userId: \(userId), kicked: \(kicked))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func exportInvite(channel: Api.InputChannel) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.ExportedChatInvite?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-950663035)
                    let _ = channel.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.exportInvite channel: \(channel))"}), buffer, { (buffer: Buffer) -> Api.ExportedChatInvite? in
                        let reader = BufferReader(buffer)
                        var result: Api.ExportedChatInvite?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.ExportedChatInvite
                        }
                        return result
                    })
                }
            
                public static func deleteChannel(channel: Api.InputChannel) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1072619549)
                    let _ = channel.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.deleteChannel channel: \(channel))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func createChannel(flags: Int32, title: String, about: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-192332417)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(title, buffer: buffer, boxed: false)
                    serializeString(about, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.createChannel flags: \(flags), title: \(title), about: \(about))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func getImportantHistory(channel: Api.InputChannel, offsetId: Int32, offsetDate: Int32, addOffset: Int32, limit: Int32, maxId: Int32, minId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.messages.Messages?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1891021902)
                    let _ = channel.serialize(buffer, true)
                    serializeInt32(offsetId, buffer: buffer, boxed: false)
                    serializeInt32(offsetDate, buffer: buffer, boxed: false)
                    serializeInt32(addOffset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(minId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.getImportantHistory channel: \(channel), offsetId: \(offsetId), offsetDate: \(offsetDate), addOffset: \(addOffset), limit: \(limit), maxId: \(maxId), minId: \(minId))"}), buffer, { (buffer: Buffer) -> Api.messages.Messages? in
                        let reader = BufferReader(buffer)
                        var result: Api.messages.Messages?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.messages.Messages
                        }
                        return result
                    })
                }
            
                public static func toggleInvites(channel: Api.InputChannel, enabled: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1231065863)
                    let _ = channel.serialize(buffer, true)
                    let _ = enabled.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.toggleInvites channel: \(channel), enabled: \(enabled))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func exportMessageLink(channel: Api.InputChannel, id: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.ExportedMessageLink?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-934882771)
                    let _ = channel.serialize(buffer, true)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.exportMessageLink channel: \(channel), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.ExportedMessageLink? in
                        let reader = BufferReader(buffer)
                        var result: Api.ExportedMessageLink?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.ExportedMessageLink
                        }
                        return result
                    })
                }
            
                public static func toggleSignatures(channel: Api.InputChannel, enabled: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(527021574)
                    let _ = channel.serialize(buffer, true)
                    let _ = enabled.serialize(buffer, true)
                    return (FunctionDescription({return "(channels.toggleSignatures channel: \(channel), enabled: \(enabled))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func editMessage(flags: Int32, channel: Api.InputChannel, id: Int32, message: String, entities: [Api.MessageEntity]?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-589659923)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = channel.serialize(buffer, true)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        let _ = item.serialize(buffer, true)
                    }}
                    return (FunctionDescription({return "(channels.editMessage flags: \(flags), channel: \(channel), id: \(id), message: \(message), entities: \(entities))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            
                public static func updatePinnedMessage(flags: Int32, channel: Api.InputChannel, id: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Updates?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1490162350)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    let _ = channel.serialize(buffer, true)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(channels.updatePinnedMessage flags: \(flags), channel: \(channel), id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Updates? in
                        let reader = BufferReader(buffer)
                        var result: Api.Updates?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Updates
                        }
                        return result
                    })
                }
            }
            public struct auth {
                public static func checkPhone(phoneNumber: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.CheckedPhone?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1877286395)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.checkPhone phoneNumber: \(phoneNumber))"}), buffer, { (buffer: Buffer) -> Api.auth.CheckedPhone? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.CheckedPhone?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.CheckedPhone
                        }
                        return result
                    })
                }
            
                public static func sendCall(phoneNumber: String, phoneCodeHash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(63247716)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.sendCall phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func signUp(phoneNumber: String, phoneCodeHash: String, phoneCode: String, firstName: String, lastName: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.Authorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(453408308)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    serializeString(phoneCode, buffer: buffer, boxed: false)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.signUp phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash), phoneCode: \(phoneCode), firstName: \(firstName), lastName: \(lastName))"}), buffer, { (buffer: Buffer) -> Api.auth.Authorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.Authorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.Authorization
                        }
                        return result
                    })
                }
            
                public static func signIn(phoneNumber: String, phoneCodeHash: String, phoneCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.Authorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1126886015)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    serializeString(phoneCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.signIn phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash), phoneCode: \(phoneCode))"}), buffer, { (buffer: Buffer) -> Api.auth.Authorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.Authorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.Authorization
                        }
                        return result
                    })
                }
            
                public static func logOut() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1461180992)
                    
                    return (FunctionDescription({return "(auth.logOut )"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func resetAuthorizations() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1616179942)
                    
                    return (FunctionDescription({return "(auth.resetAuthorizations )"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func sendInvites(phoneNumbers: [String], message: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1998331287)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(phoneNumbers.count))
                    for item in phoneNumbers {
                        serializeString(item, buffer: buffer, boxed: false)
                    }
                    serializeString(message, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.sendInvites phoneNumbers: \(phoneNumbers), message: \(message))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func exportAuthorization(dcId: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.ExportedAuthorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-440401971)
                    serializeInt32(dcId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.exportAuthorization dcId: \(dcId))"}), buffer, { (buffer: Buffer) -> Api.auth.ExportedAuthorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.ExportedAuthorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.ExportedAuthorization
                        }
                        return result
                    })
                }
            
                public static func importAuthorization(id: Int32, bytes: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.Authorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-470837741)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeBytes(bytes, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.importAuthorization id: \(id), bytes: \(bytes))"}), buffer, { (buffer: Buffer) -> Api.auth.Authorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.Authorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.Authorization
                        }
                        return result
                    })
                }
            
                public static func sendSms(phoneNumber: String, phoneCodeHash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(229241832)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.sendSms phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func resetAccountPassword(firstName: String, lastName: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.Authorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1232524865)
                    serializeString(firstName, buffer: buffer, boxed: false)
                    serializeString(lastName, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.resetAccountPassword firstName: \(firstName), lastName: \(lastName))"}), buffer, { (buffer: Buffer) -> Api.auth.Authorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.Authorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.Authorization
                        }
                        return result
                    })
                }
            
                public static func checkPassword(passwordHash: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.Authorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(174260510)
                    serializeBytes(passwordHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.checkPassword passwordHash: \(passwordHash))"}), buffer, { (buffer: Buffer) -> Api.auth.Authorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.Authorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.Authorization
                        }
                        return result
                    })
                }
            
                public static func requestPasswordRecovery() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.PasswordRecovery?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-661144474)
                    
                    return (FunctionDescription({return "(auth.requestPasswordRecovery )"}), buffer, { (buffer: Buffer) -> Api.auth.PasswordRecovery? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.PasswordRecovery?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.PasswordRecovery
                        }
                        return result
                    })
                }
            
                public static func recoverPassword(code: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.Authorization?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1319464594)
                    serializeString(code, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.recoverPassword code: \(code))"}), buffer, { (buffer: Buffer) -> Api.auth.Authorization? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.Authorization?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.Authorization
                        }
                        return result
                    })
                }
            
                public static func sendCode(flags: Int32, phoneNumber: String, currentNumber: Api.Bool?, apiId: Int32, apiHash: String, langCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.SentCode?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-855805745)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = currentNumber!.serialize(buffer, true)}
                    serializeInt32(apiId, buffer: buffer, boxed: false)
                    serializeString(apiHash, buffer: buffer, boxed: false)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.sendCode flags: \(flags), phoneNumber: \(phoneNumber), currentNumber: \(currentNumber), apiId: \(apiId), apiHash: \(apiHash), langCode: \(langCode))"}), buffer, { (buffer: Buffer) -> Api.auth.SentCode? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.SentCode?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.SentCode
                        }
                        return result
                    })
                }
            
                public static func resendCode(phoneNumber: String, phoneCodeHash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.SentCode?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1056025023)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.resendCode phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash))"}), buffer, { (buffer: Buffer) -> Api.auth.SentCode? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.SentCode?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.SentCode
                        }
                        return result
                    })
                }
            
                public static func cancelCode(phoneNumber: String, phoneCodeHash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(520357240)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(auth.cancelCode phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            }
            public struct geo {
                public static func saveGeoPlace(geoPoint: Api.InputGeoPoint, langCode: String, placeName: Api.InputGeoPlaceName) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1896021556)
                    let _ = geoPoint.serialize(buffer, true)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    let _ = placeName.serialize(buffer, true)
                    return (FunctionDescription({return "(geo.saveGeoPlace geoPoint: \(geoPoint), langCode: \(langCode), placeName: \(placeName))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            }
            public struct users {
                public static func getUsers(id: [Api.InputUser]) -> (CustomStringConvertible, Buffer, (Buffer) -> [Api.User]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(227648840)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(users.getUsers id: \(id))"}), buffer, { (buffer: Buffer) -> [Api.User]? in
                        let reader = BufferReader(buffer)
                        var result: [Api.User]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
                        }
                        return result
                    })
                }
            
                public static func getFullUser(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.UserFull?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-902781519)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(users.getFullUser id: \(id))"}), buffer, { (buffer: Buffer) -> Api.UserFull? in
                        let reader = BufferReader(buffer)
                        var result: Api.UserFull?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.UserFull
                        }
                        return result
                    })
                }
            }
            public struct contacts {
                public static func getContactIDs() -> (CustomStringConvertible, Buffer, (Buffer) -> [Int32]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(333222173)
                    
                    return (FunctionDescription({return "(contacts.getContactIDs )"}), buffer, { (buffer: Buffer) -> [Int32]? in
                        let reader = BufferReader(buffer)
                        var result: [Int32]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
                        }
                        return result
                    })
                }
            
                public static func getStatuses() -> (CustomStringConvertible, Buffer, (Buffer) -> [Api.ContactStatus]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-995929106)
                    
                    return (FunctionDescription({return "(contacts.getStatuses )"}), buffer, { (buffer: Buffer) -> [Api.ContactStatus]? in
                        let reader = BufferReader(buffer)
                        var result: [Api.ContactStatus]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 0, elementType: Api.ContactStatus.self)
                        }
                        return result
                    })
                }
            
                public static func getContacts(nHash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Contacts?) {
                    let buffer = Buffer()
                    buffer.appendInt32(583445000)
                    serializeString(nHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.getContacts nHash: \(nHash))"}), buffer, { (buffer: Buffer) -> Api.contacts.Contacts? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Contacts?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Contacts
                        }
                        return result
                    })
                }
            
                public static func getRequests(offset: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Requests?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-250972370)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.getRequests offset: \(offset), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.contacts.Requests? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Requests?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Requests
                        }
                        return result
                    })
                }
            
                public static func getLink(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Link?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-451068847)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.getLink id: \(id))"}), buffer, { (buffer: Buffer) -> Api.contacts.Link? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Link?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Link
                        }
                        return result
                    })
                }
            
                public static func importContacts(contacts: [Api.InputContact], replace: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.ImportedContacts?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-634342611)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(contacts.count))
                    for item in contacts {
                        let _ = item.serialize(buffer, true)
                    }
                    let _ = replace.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.importContacts contacts: \(contacts), replace: \(replace))"}), buffer, { (buffer: Buffer) -> Api.contacts.ImportedContacts? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.ImportedContacts?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.ImportedContacts
                        }
                        return result
                    })
                }
            
                public static func getLocated(geoPoint: Api.InputGeoPoint, hidden: Api.Bool, radius: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Located?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1639285372)
                    let _ = geoPoint.serialize(buffer, true)
                    let _ = hidden.serialize(buffer, true)
                    serializeInt32(radius, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.getLocated geoPoint: \(geoPoint), hidden: \(hidden), radius: \(radius), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.contacts.Located? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Located?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Located
                        }
                        return result
                    })
                }
            
                public static func getSuggested(limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Suggested?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-847825880)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.getSuggested limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.contacts.Suggested? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Suggested?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Suggested
                        }
                        return result
                    })
                }
            
                public static func sendRequest(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.SentLink?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1923828526)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.sendRequest id: \(id))"}), buffer, { (buffer: Buffer) -> Api.contacts.SentLink? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.SentLink?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.SentLink
                        }
                        return result
                    })
                }
            
                public static func acceptRequest(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Link?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1804853359)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.acceptRequest id: \(id))"}), buffer, { (buffer: Buffer) -> Api.contacts.Link? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Link?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Link
                        }
                        return result
                    })
                }
            
                public static func declineRequest(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Link?) {
                    let buffer = Buffer()
                    buffer.appendInt32(308953976)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.declineRequest id: \(id))"}), buffer, { (buffer: Buffer) -> Api.contacts.Link? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Link?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Link
                        }
                        return result
                    })
                }
            
                public static func deleteContact(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Link?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1902823612)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.deleteContact id: \(id))"}), buffer, { (buffer: Buffer) -> Api.contacts.Link? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Link?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Link
                        }
                        return result
                    })
                }
            
                public static func clearContact(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Link?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-596855117)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.clearContact id: \(id))"}), buffer, { (buffer: Buffer) -> Api.contacts.Link? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Link?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Link
                        }
                        return result
                    })
                }
            
                public static func deleteContacts(id: [Api.InputUser]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1504393374)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(contacts.deleteContacts id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func block(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(858475004)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.block id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func unblock(id: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-448724803)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.unblock id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getBlocked(offset: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Blocked?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-176409329)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.getBlocked offset: \(offset), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.contacts.Blocked? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Blocked?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Blocked
                        }
                        return result
                    })
                }
            
                public static func search(q: String, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.Found?) {
                    let buffer = Buffer()
                    buffer.appendInt32(301470424)
                    serializeString(q, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.search q: \(q), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.contacts.Found? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.Found?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.Found
                        }
                        return result
                    })
                }
            
                public static func resolveUsername(username: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.ResolvedPeer?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-113456221)
                    serializeString(username, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.resolveUsername username: \(username))"}), buffer, { (buffer: Buffer) -> Api.contacts.ResolvedPeer? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.ResolvedPeer?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.ResolvedPeer
                        }
                        return result
                    })
                }
            
                public static func getTopPeers(flags: Int32, offset: Int32, limit: Int32, hash: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.contacts.TopPeers?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-728224331)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contacts.getTopPeers flags: \(flags), offset: \(offset), limit: \(limit), hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.contacts.TopPeers? in
                        let reader = BufferReader(buffer)
                        var result: Api.contacts.TopPeers?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.contacts.TopPeers
                        }
                        return result
                    })
                }
            
                public static func resetTopPeerRating(category: Api.TopPeerCategory, peer: Api.InputPeer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(451113900)
                    let _ = category.serialize(buffer, true)
                    let _ = peer.serialize(buffer, true)
                    return (FunctionDescription({return "(contacts.resetTopPeerRating category: \(category), peer: \(peer))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            }
            public struct contest {
                public static func saveDeveloperInfo(vkId: Int32, name: String, phoneNumber: String, age: Int32, city: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1705021803)
                    serializeInt32(vkId, buffer: buffer, boxed: false)
                    serializeString(name, buffer: buffer, boxed: false)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeInt32(age, buffer: buffer, boxed: false)
                    serializeString(city, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(contest.saveDeveloperInfo vkId: \(vkId), name: \(name), phoneNumber: \(phoneNumber), age: \(age), city: \(city))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            }
            public struct help {
                public static func getConfig() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Config?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-990308245)
                    
                    return (FunctionDescription({return "(help.getConfig )"}), buffer, { (buffer: Buffer) -> Api.Config? in
                        let reader = BufferReader(buffer)
                        var result: Api.Config?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Config
                        }
                        return result
                    })
                }
            
                public static func getNearestDc() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.NearestDc?) {
                    let buffer = Buffer()
                    buffer.appendInt32(531836966)
                    
                    return (FunctionDescription({return "(help.getNearestDc )"}), buffer, { (buffer: Buffer) -> Api.NearestDc? in
                        let reader = BufferReader(buffer)
                        var result: Api.NearestDc?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.NearestDc
                        }
                        return result
                    })
                }
            
                public static func getScheme(version: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Scheme?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-608789858)
                    serializeInt32(version, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(help.getScheme version: \(version))"}), buffer, { (buffer: Buffer) -> Api.Scheme? in
                        let reader = BufferReader(buffer)
                        var result: Api.Scheme?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Scheme
                        }
                        return result
                    })
                }
            
                public static func getAppUpdate(deviceModel: String, systemVersion: String, appVersion: String, langCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.help.AppUpdate?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-938300290)
                    serializeString(deviceModel, buffer: buffer, boxed: false)
                    serializeString(systemVersion, buffer: buffer, boxed: false)
                    serializeString(appVersion, buffer: buffer, boxed: false)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(help.getAppUpdate deviceModel: \(deviceModel), systemVersion: \(systemVersion), appVersion: \(appVersion), langCode: \(langCode))"}), buffer, { (buffer: Buffer) -> Api.help.AppUpdate? in
                        let reader = BufferReader(buffer)
                        var result: Api.help.AppUpdate?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.help.AppUpdate
                        }
                        return result
                    })
                }
            
                public static func getInviteText(langCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.help.InviteText?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1532407418)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(help.getInviteText langCode: \(langCode))"}), buffer, { (buffer: Buffer) -> Api.help.InviteText? in
                        let reader = BufferReader(buffer)
                        var result: Api.help.InviteText?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.help.InviteText
                        }
                        return result
                    })
                }
            
                public static func getAppPrefs(apiId: Int32, apiHash: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.help.AppPrefs?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1883316387)
                    serializeInt32(apiId, buffer: buffer, boxed: false)
                    serializeString(apiHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(help.getAppPrefs apiId: \(apiId), apiHash: \(apiHash))"}), buffer, { (buffer: Buffer) -> Api.help.AppPrefs? in
                        let reader = BufferReader(buffer)
                        var result: Api.help.AppPrefs?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.help.AppPrefs
                        }
                        return result
                    })
                }
            
                public static func saveNetworkStats(stats: [Api.DcNetworkStats]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1113444435)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(stats.count))
                    for item in stats {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(help.saveNetworkStats stats: \(stats))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func test() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1058929929)
                    
                    return (FunctionDescription({return "(help.test )"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getSupport() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.help.Support?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1663104819)
                    
                    return (FunctionDescription({return "(help.getSupport )"}), buffer, { (buffer: Buffer) -> Api.help.Support? in
                        let reader = BufferReader(buffer)
                        var result: Api.help.Support?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.help.Support
                        }
                        return result
                    })
                }
            
                public static func getAppChangelog(deviceModel: String, systemVersion: String, appVersion: String, langCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.help.AppChangelog?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1537966002)
                    serializeString(deviceModel, buffer: buffer, boxed: false)
                    serializeString(systemVersion, buffer: buffer, boxed: false)
                    serializeString(appVersion, buffer: buffer, boxed: false)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(help.getAppChangelog deviceModel: \(deviceModel), systemVersion: \(systemVersion), appVersion: \(appVersion), langCode: \(langCode))"}), buffer, { (buffer: Buffer) -> Api.help.AppChangelog? in
                        let reader = BufferReader(buffer)
                        var result: Api.help.AppChangelog?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.help.AppChangelog
                        }
                        return result
                    })
                }
            }
            public struct updates {
                public static func getState() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.updates.State?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-304838614)
                    
                    return (FunctionDescription({return "(updates.getState )"}), buffer, { (buffer: Buffer) -> Api.updates.State? in
                        let reader = BufferReader(buffer)
                        var result: Api.updates.State?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.updates.State
                        }
                        return result
                    })
                }
            
                public static func subscribe(users: [Api.InputUser]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-72144472)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(updates.subscribe users: \(users))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func unsubscribe(users: [Api.InputUser]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(138751864)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(updates.unsubscribe users: \(users))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getDifference(pts: Int32, date: Int32, qts: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.updates.Difference?) {
                    let buffer = Buffer()
                    buffer.appendInt32(168039573)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(qts, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(updates.getDifference pts: \(pts), date: \(date), qts: \(qts))"}), buffer, { (buffer: Buffer) -> Api.updates.Difference? in
                        let reader = BufferReader(buffer)
                        var result: Api.updates.Difference?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.updates.Difference
                        }
                        return result
                    })
                }
            
                public static func getChannelDifference(channel: Api.InputChannel, filter: Api.ChannelMessagesFilter, pts: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.updates.ChannelDifference?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1154295872)
                    let _ = channel.serialize(buffer, true)
                    let _ = filter.serialize(buffer, true)
                    serializeInt32(pts, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(updates.getChannelDifference channel: \(channel), filter: \(filter), pts: \(pts), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.updates.ChannelDifference? in
                        let reader = BufferReader(buffer)
                        var result: Api.updates.ChannelDifference?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.updates.ChannelDifference
                        }
                        return result
                    })
                }
            }
            public struct upload {
                public static func saveFilePart(fileId: Int64, filePart: Int32, bytes: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1291540959)
                    serializeInt64(fileId, buffer: buffer, boxed: false)
                    serializeInt32(filePart, buffer: buffer, boxed: false)
                    serializeBytes(bytes, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(upload.saveFilePart fileId: \(fileId), filePart: \(filePart), bytes: \(bytes))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getFile(location: Api.InputFileLocation, offset: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.upload.File?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-475607115)
                    let _ = location.serialize(buffer, true)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(upload.getFile location: \(location), offset: \(offset), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.upload.File? in
                        let reader = BufferReader(buffer)
                        var result: Api.upload.File?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.upload.File
                        }
                        return result
                    })
                }
            
                public static func saveBigFilePart(fileId: Int64, filePart: Int32, fileTotalParts: Int32, bytes: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-562337987)
                    serializeInt64(fileId, buffer: buffer, boxed: false)
                    serializeInt32(filePart, buffer: buffer, boxed: false)
                    serializeInt32(fileTotalParts, buffer: buffer, boxed: false)
                    serializeBytes(bytes, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(upload.saveBigFilePart fileId: \(fileId), filePart: \(filePart), fileTotalParts: \(fileTotalParts), bytes: \(bytes))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            }
            public struct account {
                public static func unregisterDevice(tokenType: Int32, token: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1707432768)
                    serializeInt32(tokenType, buffer: buffer, boxed: false)
                    serializeString(token, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.unregisterDevice tokenType: \(tokenType), token: \(token))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func updateNotifySettings(peer: Api.InputNotifyPeer, settings: Api.InputPeerNotifySettings) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-2067899501)
                    let _ = peer.serialize(buffer, true)
                    let _ = settings.serialize(buffer, true)
                    return (FunctionDescription({return "(account.updateNotifySettings peer: \(peer), settings: \(settings))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getNotifySettings(peer: Api.InputNotifyPeer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.PeerNotifySettings?) {
                    let buffer = Buffer()
                    buffer.appendInt32(313765169)
                    let _ = peer.serialize(buffer, true)
                    return (FunctionDescription({return "(account.getNotifySettings peer: \(peer))"}), buffer, { (buffer: Buffer) -> Api.PeerNotifySettings? in
                        let reader = BufferReader(buffer)
                        var result: Api.PeerNotifySettings?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.PeerNotifySettings
                        }
                        return result
                    })
                }
            
                public static func resetNotifySettings() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-612493497)
                    
                    return (FunctionDescription({return "(account.resetNotifySettings )"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func updateStatus(offline: Api.Bool) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1713919532)
                    let _ = offline.serialize(buffer, true)
                    return (FunctionDescription({return "(account.updateStatus offline: \(offline))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getWallPapers() -> (CustomStringConvertible, Buffer, (Buffer) -> [Api.WallPaper]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1068696894)
                    
                    return (FunctionDescription({return "(account.getWallPapers )"}), buffer, { (buffer: Buffer) -> [Api.WallPaper]? in
                        let reader = BufferReader(buffer)
                        var result: [Api.WallPaper]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 0, elementType: Api.WallPaper.self)
                        }
                        return result
                    })
                }
            
                public static func registerDevice(tokenType: Int32, token: String, deviceModel: String, systemVersion: String, appVersion: String, appSandbox: Api.Bool, langCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1147957548)
                    serializeInt32(tokenType, buffer: buffer, boxed: false)
                    serializeString(token, buffer: buffer, boxed: false)
                    serializeString(deviceModel, buffer: buffer, boxed: false)
                    serializeString(systemVersion, buffer: buffer, boxed: false)
                    serializeString(appVersion, buffer: buffer, boxed: false)
                    let _ = appSandbox.serialize(buffer, true)
                    serializeString(langCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.registerDevice tokenType: \(tokenType), token: \(token), deviceModel: \(deviceModel), systemVersion: \(systemVersion), appVersion: \(appVersion), appSandbox: \(appSandbox), langCode: \(langCode))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func checkUsername(username: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(655677548)
                    serializeString(username, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.checkUsername username: \(username))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func updateUsername(username: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.User?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1040964988)
                    serializeString(username, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.updateUsername username: \(username))"}), buffer, { (buffer: Buffer) -> Api.User? in
                        let reader = BufferReader(buffer)
                        var result: Api.User?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.User
                        }
                        return result
                    })
                }
            
                public static func getPrivacy(key: Api.InputPrivacyKey) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.account.PrivacyRules?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-623130288)
                    let _ = key.serialize(buffer, true)
                    return (FunctionDescription({return "(account.getPrivacy key: \(key))"}), buffer, { (buffer: Buffer) -> Api.account.PrivacyRules? in
                        let reader = BufferReader(buffer)
                        var result: Api.account.PrivacyRules?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.account.PrivacyRules
                        }
                        return result
                    })
                }
            
                public static func setPrivacy(key: Api.InputPrivacyKey, rules: [Api.InputPrivacyRule]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.account.PrivacyRules?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-906486552)
                    let _ = key.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(rules.count))
                    for item in rules {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(account.setPrivacy key: \(key), rules: \(rules))"}), buffer, { (buffer: Buffer) -> Api.account.PrivacyRules? in
                        let reader = BufferReader(buffer)
                        var result: Api.account.PrivacyRules?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.account.PrivacyRules
                        }
                        return result
                    })
                }
            
                public static func deleteAccount(reason: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1099779595)
                    serializeString(reason, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.deleteAccount reason: \(reason))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getAccountTTL() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.AccountDaysTTL?) {
                    let buffer = Buffer()
                    buffer.appendInt32(150761757)
                    
                    return (FunctionDescription({return "(account.getAccountTTL )"}), buffer, { (buffer: Buffer) -> Api.AccountDaysTTL? in
                        let reader = BufferReader(buffer)
                        var result: Api.AccountDaysTTL?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.AccountDaysTTL
                        }
                        return result
                    })
                }
            
                public static func setAccountTTL(ttl: Api.AccountDaysTTL) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(608323678)
                    let _ = ttl.serialize(buffer, true)
                    return (FunctionDescription({return "(account.setAccountTTL ttl: \(ttl))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func changePhone(phoneNumber: String, phoneCodeHash: String, phoneCode: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.User?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1891839707)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    serializeString(phoneCodeHash, buffer: buffer, boxed: false)
                    serializeString(phoneCode, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.changePhone phoneNumber: \(phoneNumber), phoneCodeHash: \(phoneCodeHash), phoneCode: \(phoneCode))"}), buffer, { (buffer: Buffer) -> Api.User? in
                        let reader = BufferReader(buffer)
                        var result: Api.User?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.User
                        }
                        return result
                    })
                }
            
                public static func setPassword(currentPasswordHash: Buffer, newSalt: Buffer, newPasswordHash: Buffer, hint: String) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-584430193)
                    serializeBytes(currentPasswordHash, buffer: buffer, boxed: false)
                    serializeBytes(newSalt, buffer: buffer, boxed: false)
                    serializeBytes(newPasswordHash, buffer: buffer, boxed: false)
                    serializeString(hint, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.setPassword currentPasswordHash: \(currentPasswordHash), newSalt: \(newSalt), newPasswordHash: \(newPasswordHash), hint: \(hint))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func updateDeviceLocked(period: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(954152242)
                    serializeInt32(period, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.updateDeviceLocked period: \(period))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getAuthorizations() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.account.Authorizations?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-484392616)
                    
                    return (FunctionDescription({return "(account.getAuthorizations )"}), buffer, { (buffer: Buffer) -> Api.account.Authorizations? in
                        let reader = BufferReader(buffer)
                        var result: Api.account.Authorizations?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.account.Authorizations
                        }
                        return result
                    })
                }
            
                public static func resetAuthorization(hash: Int64) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-545786948)
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.resetAuthorization hash: \(hash))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func getPassword() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.account.Password?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1418342645)
                    
                    return (FunctionDescription({return "(account.getPassword )"}), buffer, { (buffer: Buffer) -> Api.account.Password? in
                        let reader = BufferReader(buffer)
                        var result: Api.account.Password?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.account.Password
                        }
                        return result
                    })
                }
            
                public static func getPasswordSettings(currentPasswordHash: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.account.PasswordSettings?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1131605573)
                    serializeBytes(currentPasswordHash, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(account.getPasswordSettings currentPasswordHash: \(currentPasswordHash))"}), buffer, { (buffer: Buffer) -> Api.account.PasswordSettings? in
                        let reader = BufferReader(buffer)
                        var result: Api.account.PasswordSettings?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.account.PasswordSettings
                        }
                        return result
                    })
                }
            
                public static func updatePasswordSettings(currentPasswordHash: Buffer, newSettings: Api.account.PasswordInputSettings) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-92517498)
                    serializeBytes(currentPasswordHash, buffer: buffer, boxed: false)
                    let _ = newSettings.serialize(buffer, true)
                    return (FunctionDescription({return "(account.updatePasswordSettings currentPasswordHash: \(currentPasswordHash), newSettings: \(newSettings))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func updateProfile(flags: Int32, firstName: String?, lastName: String?, about: String?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.User?) {
                    let buffer = Buffer()
                    buffer.appendInt32(2018596725)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeString(firstName!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(lastName!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(about!, buffer: buffer, boxed: false)}
                    return (FunctionDescription({return "(account.updateProfile flags: \(flags), firstName: \(firstName), lastName: \(lastName), about: \(about))"}), buffer, { (buffer: Buffer) -> Api.User? in
                        let reader = BufferReader(buffer)
                        var result: Api.User?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.User
                        }
                        return result
                    })
                }
            
                public static func sendChangePhoneCode(flags: Int32, phoneNumber: String, currentNumber: Api.Bool?) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.auth.SentCode?) {
                    let buffer = Buffer()
                    buffer.appendInt32(149257707)
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(phoneNumber, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {let _ = currentNumber!.serialize(buffer, true)}
                    return (FunctionDescription({return "(account.sendChangePhoneCode flags: \(flags), phoneNumber: \(phoneNumber), currentNumber: \(currentNumber))"}), buffer, { (buffer: Buffer) -> Api.auth.SentCode? in
                        let reader = BufferReader(buffer)
                        var result: Api.auth.SentCode?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.auth.SentCode
                        }
                        return result
                    })
                }
            }
            public struct photos {
                public static func getPhotos(id: [Api.InputPhoto]) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.photos.Photos?) {
                    let buffer = Buffer()
                    buffer.appendInt32(20076782)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(photos.getPhotos id: \(id))"}), buffer, { (buffer: Buffer) -> Api.photos.Photos? in
                        let reader = BufferReader(buffer)
                        var result: Api.photos.Photos?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.photos.Photos
                        }
                        return result
                    })
                }
            
                public static func getWall(userId: Api.InputUser, offset: Int32, maxId: Int32, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.photos.Photos?) {
                    let buffer = Buffer()
                    buffer.appendInt32(34033964)
                    let _ = userId.serialize(buffer, true)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt32(maxId, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(photos.getWall userId: \(userId), offset: \(offset), maxId: \(maxId), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.photos.Photos? in
                        let reader = BufferReader(buffer)
                        var result: Api.photos.Photos?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.photos.Photos
                        }
                        return result
                    })
                }
            
                public static func readWall(userId: Api.InputUser, maxId: Int64) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1170316907)
                    let _ = userId.serialize(buffer, true)
                    serializeInt64(maxId, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(photos.readWall userId: \(userId), maxId: \(maxId))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            
                public static func editPhoto(id: Api.InputPhoto, caption: String, geoPoint: Api.InputGeoPoint) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.photos.Photo?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1364846786)
                    let _ = id.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    let _ = geoPoint.serialize(buffer, true)
                    return (FunctionDescription({return "(photos.editPhoto id: \(id), caption: \(caption), geoPoint: \(geoPoint))"}), buffer, { (buffer: Buffer) -> Api.photos.Photo? in
                        let reader = BufferReader(buffer)
                        var result: Api.photos.Photo?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.photos.Photo
                        }
                        return result
                    })
                }
            
                public static func updateProfilePhoto(id: Api.InputPhoto, crop: Api.InputPhotoCrop) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.UserProfilePhoto?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-285902432)
                    let _ = id.serialize(buffer, true)
                    let _ = crop.serialize(buffer, true)
                    return (FunctionDescription({return "(photos.updateProfilePhoto id: \(id), crop: \(crop))"}), buffer, { (buffer: Buffer) -> Api.UserProfilePhoto? in
                        let reader = BufferReader(buffer)
                        var result: Api.UserProfilePhoto?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.UserProfilePhoto
                        }
                        return result
                    })
                }
            
                public static func uploadPhoto(file: Api.InputFile, caption: String, geoPoint: Api.InputGeoPoint) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.photos.Photo?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1688640082)
                    let _ = file.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    let _ = geoPoint.serialize(buffer, true)
                    return (FunctionDescription({return "(photos.uploadPhoto file: \(file), caption: \(caption), geoPoint: \(geoPoint))"}), buffer, { (buffer: Buffer) -> Api.photos.Photo? in
                        let reader = BufferReader(buffer)
                        var result: Api.photos.Photo?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.photos.Photo
                        }
                        return result
                    })
                }
            
                public static func uploadProfilePhoto(file: Api.InputFile, caption: String, geoPoint: Api.InputGeoPoint, crop: Api.InputPhotoCrop) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.photos.Photo?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-720397176)
                    let _ = file.serialize(buffer, true)
                    serializeString(caption, buffer: buffer, boxed: false)
                    let _ = geoPoint.serialize(buffer, true)
                    let _ = crop.serialize(buffer, true)
                    return (FunctionDescription({return "(photos.uploadProfilePhoto file: \(file), caption: \(caption), geoPoint: \(geoPoint), crop: \(crop))"}), buffer, { (buffer: Buffer) -> Api.photos.Photo? in
                        let reader = BufferReader(buffer)
                        var result: Api.photos.Photo?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.photos.Photo
                        }
                        return result
                    })
                }
            
                public static func deletePhotos(id: [Api.InputPhoto]) -> (CustomStringConvertible, Buffer, (Buffer) -> [Int64]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-2016444625)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(photos.deletePhotos id: \(id))"}), buffer, { (buffer: Buffer) -> [Int64]? in
                        let reader = BufferReader(buffer)
                        var result: [Int64]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
                        }
                        return result
                    })
                }
            
                public static func restorePhotos(id: [Api.InputPhoto]) -> (CustomStringConvertible, Buffer, (Buffer) -> [Int64]?) {
                    let buffer = Buffer()
                    buffer.appendInt32(602134380)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(id.count))
                    for item in id {
                        let _ = item.serialize(buffer, true)
                    }
                    return (FunctionDescription({return "(photos.restorePhotos id: \(id))"}), buffer, { (buffer: Buffer) -> [Int64]? in
                        let reader = BufferReader(buffer)
                        var result: [Int64]?
                        if let _ = reader.readInt32() {
                            result = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
                        }
                        return result
                    })
                }
            
                public static func getUserPhotos(userId: Api.InputUser, offset: Int32, maxId: Int64, limit: Int32) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.photos.Photos?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-1848823128)
                    let _ = userId.serialize(buffer, true)
                    serializeInt32(offset, buffer: buffer, boxed: false)
                    serializeInt64(maxId, buffer: buffer, boxed: false)
                    serializeInt32(limit, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(photos.getUserPhotos userId: \(userId), offset: \(offset), maxId: \(maxId), limit: \(limit))"}), buffer, { (buffer: Buffer) -> Api.photos.Photos? in
                        let reader = BufferReader(buffer)
                        var result: Api.photos.Photos?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.photos.Photos
                        }
                        return result
                    })
                }
            }
            public struct phone {
                public static func getDhConfig() -> (CustomStringConvertible, Buffer, (Buffer) -> Api.phone.DhConfig?) {
                    let buffer = Buffer()
                    buffer.appendInt32(-999155058)
                    
                    return (FunctionDescription({return "(phone.getDhConfig )"}), buffer, { (buffer: Buffer) -> Api.phone.DhConfig? in
                        let reader = BufferReader(buffer)
                        var result: Api.phone.DhConfig?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.phone.DhConfig
                        }
                        return result
                    })
                }
            
                public static func requestCall(userId: Api.InputUser) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.PhoneCall?) {
                    let buffer = Buffer()
                    buffer.appendInt32(270107117)
                    let _ = userId.serialize(buffer, true)
                    return (FunctionDescription({return "(phone.requestCall userId: \(userId))"}), buffer, { (buffer: Buffer) -> Api.PhoneCall? in
                        let reader = BufferReader(buffer)
                        var result: Api.PhoneCall?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.PhoneCall
                        }
                        return result
                    })
                }
            
                public static func confirmCall(id: Api.InputPhoneCall, aOrB: Buffer) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.PhoneConnection?) {
                    let buffer = Buffer()
                    buffer.appendInt32(1043872105)
                    let _ = id.serialize(buffer, true)
                    serializeBytes(aOrB, buffer: buffer, boxed: false)
                    return (FunctionDescription({return "(phone.confirmCall id: \(id), aOrB: \(aOrB))"}), buffer, { (buffer: Buffer) -> Api.PhoneConnection? in
                        let reader = BufferReader(buffer)
                        var result: Api.PhoneConnection?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.PhoneConnection
                        }
                        return result
                    })
                }
            
                public static func declineCall(id: Api.InputPhoneCall) -> (CustomStringConvertible, Buffer, (Buffer) -> Api.Bool?) {
                    let buffer = Buffer()
                    buffer.appendInt32(983145256)
                    let _ = id.serialize(buffer, true)
                    return (FunctionDescription({return "(phone.declineCall id: \(id))"}), buffer, { (buffer: Buffer) -> Api.Bool? in
                        let reader = BufferReader(buffer)
                        var result: Api.Bool?
                        if let signature = reader.readInt32() {
                            result = Api.parse(reader, signature: signature) as? Api.Bool
                        }
                        return result
                    })
                }
            }
    }

}