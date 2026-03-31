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

resource servicebusdatareceiverrole 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(uamiPrincipalId, 'servicebus-data-receiver')
  properties: {
    roleDefinitionId: subscriptionResourceId(
      'Microsoft.Authorization/roleDefinitions',
      '4f6d3b9b-027b-4f4c-9142-0e5a2a2247e0' // Service Bus Data Receiver
    )
    principalId: uamiPrincipalId
    principalType: 'ServicePrincipal'
  }
}
