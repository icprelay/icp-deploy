param uamiPrincipalId string

resource servicebusdatasenderrole 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(uamiPrincipalId, 'servicebus-data-sender')
  properties: {
    roleDefinitionId: subscriptionResourceId(
      'Microsoft.Authorization/roleDefinitions',
      '69a216fc-b8fb-44d8-bc22-1f3c2cd27a39' // Service Bus Data Sender
    )
    principalId: uamiPrincipalId
    principalType: 'ServicePrincipal'
  }
}


