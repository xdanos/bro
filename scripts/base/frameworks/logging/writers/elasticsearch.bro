module LogElasticSearch;

export {
        ## Name of the ES cluster
	const cluster_name = "elasticsearch" &redef;

	## ES Server
	const server_host = "127.0.0.1" &redef;

	## ES Port
	const server_port = 9200 &redef;

	## Name of the ES index
	const index_name = "bro" &redef;

	## The ES type prefix comes before the name of the related log.
	## e.g. prefix = "bro_" would create types of bro_dns, bro_software, etc.
	const type_prefix = "" &redef;

	## The batch size is the number of messages that will be queued up before 
	## they are sent to be bulk indexed.
	## Note: this is mainly a memory usage parameter.
	const batch_size = 1000 &redef;
	
	## The maximum amount of wall-clock time that is allowed to pass without
	## finishing a bulk log send.  This represents the maximum delay you 
	## would like to have with your logs before they show up in ElasticSearch.
	const max_batch_interval = 1min &redef;
}

